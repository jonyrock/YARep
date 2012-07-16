using System;
using System.Web;
using System.Collections.Generic;
using System.IO;

namespace Cice.Models {

	#region Models

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

	public class Comment {

		public string AuthorName { get; set; }

		public string AuthorEmail { get; set; }

		public string Text { get; set; }

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

		public string QuestionsBasePath;
		
		public XmlQuestionService() {
			QuestionsBasePath = HttpContext.Current.Server.MapPath("~/App_Data/QuestionsBase.txt");
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

		static Random rand = new Random();

		public Question GetFullQuestion(Guid id) {
			var q = new Question();
			q.Title = "Как мне подобрать правильные средства ухода и декоративную косметику?";
			q.AuthorName = "Татьяна";
			q.CreationTime = DateTime.Parse("03/01/2009 05:42:00");
			q.Text = "Ощущение «тяжести» на лице совершенно не означает, что кожа перегружена. Вы можете спокойно использовать тональные средства даже максимального покрытия - они не способны оказать негативное воздействие на кожу. В редких случаях косметические продукты с высоким уровнем SPF или водостойкие тональные средства могут вызвать ощущение «тяжести» на коже, потому что они содержат компоненты, которые поглощают УФ-лучи, или обладают водостойкими свойствами. При появлении каких-либо проблем с кожей немедленно прекратите использование продукта.При появлении акне рекомендуется прекратить использование тональных средств, которые могут только осложнить ситуацию.";
			q.AuthorPhone = "8 911 299 16 15";
			q.AuthorEmail = "gmpota@gmail.com";
			q.Id = id;
			q.ResponseCreationTime = DateTime.Now;

			if (rand.Next() % 2 == 0) {
				q.Response = "Ощущение «тяжести» на лице совершенно не означает, что кожа перегружена. Вы можете спокойно использовать тональные средства даже максимального покрытия - они не способны оказать негативное воздействие на кожу. В редких случаях косметические продукты с высоким уровнем SPF или водостойкие тональные средства могут вызвать ощущение «тяжести» на коже, потому что они содержат компоненты, которые поглощают УФ-лучи, или обладают водостойкими свойствами. При появлении каких-либо проблем с кожей немедленно прекратите использование продукта.При появлении акне рекомендуется прекратить использование тональных средств, которые могут только осложнить ситуацию.";
			}
			return q;
		}

		public List<Question> GetQuestionsRange(int p, int q) {

			List<Question> qlist = new List<Question>();
			TextReader reader = new StreamReader(QuestionsBasePath);
			for (int i = 0; i < p; i++) reader.ReadLine();
			while (p <= q && p < QuestionsCount) {
				qlist.Add(GetFullQuestion(Guid.NewGuid()));
				p++;
			}
			reader.Close();
			return qlist;

		}

		public bool UpdateQuestion(Question question) {
			return true;
		}

		public bool SaveQuestion(Question question) {
			return true;
		}

	}

	#endregion

}