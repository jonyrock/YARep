using System;
using System.Web;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;

namespace Cice.Models {

	#region Models

	[Serializable]
	public class Question {

		public Guid Id { get; set; }

		public DateTime CreationTime { get; set; }

		public string Title { get; set; }

		public string Text { get; set; }

		public string AuthorName { get; set; }
	   
		public string AuthorEmail { get; set; }

		public string AuthorPhone { get; set; }

		public string Response { get; set; }

		public DateTime ResponseCreationTime { get; set; }

	}

	#endregion

	#region Services

	public interface IQuestionsService {
		
		/// <summary>
		/// Get certain question by guid.
		/// </summary>
		/// <param name="id">Expected question guid</param>
		/// <returns>Either question if ok or null otherwise.</returns>
		Question GetFullQuestion(Guid id);

		/// <summary>
		/// Get questions in range [p..q] in default order.
		/// </summary>
		/// <param name="p">Beginning or range.</param>
		/// <param name="q">End of range.</param>
		/// <returns>Questions. List<Question>.Count() <= q - p + 1.</returns>
		List<Question> GetQuestionsRange(int p, int q);

		/// <summary>
		/// Update exist question. Field Question.Id is necessary.
		/// </summary>
		/// <param name="question">For update.</param>
		/// <returns>Succes or not.</returns>
		bool UpdateQuestion(Question question);

		/// <summary>
		/// Save new question. Field Question.Id should be null.
		/// Question.Id will be setted if operation is success.
		/// </summary>
		/// <param name="question">For update.</param>
		/// <returns>Succes or not.</returns>
		bool SaveQuestion(Question question);

		/// <summary>
		/// All questions number in base.
		/// </summary>
		int QuestionsCount { get; }

	}

	public class XmlQuestionService : IQuestionsService {

		string QuestionsBasePath;
		string QuestionsFolderPath;
		
		public XmlQuestionService() {
			QuestionsBasePath = HttpContext.Current.Server.MapPath("~/App_Data/QuestionsBase.txt");
			QuestionsFolderPath = HttpContext.Current.Server.MapPath("~/App_Data/Questions/");
			if (!File.Exists(QuestionsBasePath)) File.WriteAllText(QuestionsBasePath, "0");
		}

		int? questionsCount;
		public int QuestionsCount {
			get {
				if (!questionsCount.HasValue) {
					TextReader reader = new StreamReader(QuestionsBasePath);
					questionsCount = int.Parse(reader.ReadLine());
					reader.Close();
				}
				return questionsCount.Value;
			}
		}

		public Question GetFullQuestion(Guid id) {
			var reader = File.OpenRead(QuestionsFolderPath + id);
			BinaryFormatter formatter = new BinaryFormatter();
			var q = (Question)formatter.Deserialize(reader);
			reader.Close();
			return q;
		}

		public List<Question> GetQuestionsRange(int p, int q) {
			List<Question> qlist = new List<Question>();
			TextReader reader = new StreamReader(QuestionsBasePath);
			for (int i = 0; i <= p; i++) reader.ReadLine();
			while (p <= q && p < QuestionsCount) {
				string s = reader.ReadLine();
				qlist.Add(GetFullQuestion(new Guid(s)));
				p++;
			}
			reader.Close();
			return qlist;
		}

		public bool UpdateQuestion(Question question) {
			BinaryFormatter formatter = new BinaryFormatter();
			File.Delete(QuestionsFolderPath + question.Id.ToString());
			var stream = File.Create(QuestionsFolderPath + question.Id.ToString());
			formatter.Serialize(stream, question);
			stream.Close();
			return true;
		}

		public bool SaveQuestion(Question question) {
			Guid newGuid = Guid.NewGuid();
			var lines = new List<string>(File.ReadAllLines(QuestionsBasePath));
			int count = int.Parse(lines[0]);
			var newLines = new List<string>();
			newLines.Add((count + 1).ToString());
			newLines.Add(newGuid.ToString());
			newLines.AddRange(lines.Skip(1));
			File.WriteAllLines(QuestionsBasePath, newLines.ToArray());
			question.Id = newGuid;
			BinaryFormatter formatter = new BinaryFormatter();
			var stream = File.Create(QuestionsFolderPath + newGuid.ToString());
			formatter.Serialize(stream, question);
			stream.Close();
			return true;
		}

	}

	#endregion

}