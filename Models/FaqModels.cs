
using System;
using System.Collections.Generic;

namespace Cice.Models {

	#region Models
	public class Question {

		public int Id { get; set; }

		public DateTime CreationTime { get; set; }

		public string Title { get; set; }

		public string Text { get; set; }

		public string AuthorName { get; set; }
	   
		public string AuthorEmail { get; set; }

		public string AuthorPhone { get; set; }

	}
	#endregion


	#region Services

	public interface IQuestionsService {
		Question GetFullQuestion(int id);

		/// <summary>
		/// Get questions in range [p..q] in default order
		/// </summary>
		/// <param name="p">beging</param>
		/// <param name="q">end</param>
		/// <returns>questions, maybe null or just less than q - p + 1</returns>
		List<Question> GetQuestionsRange(int p, int q);

		/// <summary>
		/// Update exist question. Filed Question.Id must has to be.
		/// </summary>
		/// <param name="question">to update</param>
		/// <returns>Succes or not</returns>
		bool UpdateQuestion(Question question);

	}

	#endregion

}