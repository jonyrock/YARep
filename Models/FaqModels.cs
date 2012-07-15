
using System;
using System.Collections.Generic;

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
		/// <returns>Questions. Maybe null. List<Question>.Count() <= q - p + 1.</returns>
		List<Question> GetQuestionsRange(int p, int q);

		/// <summary>
		/// Update exist question. Field Question.Id is necessary.
		/// </summary>
		/// <param name="question">For update.</param>
		/// <returns>Succes or not.</returns>
		bool UpdateQuestion(Question question);

		/// <summary>
		/// Save new question. Field Question.Id should be null.
		/// </summary>
		/// <param name="question">For update.</param>
		/// <returns>Succes or not.</returns>
		bool SaveQuestion(Question question);

	}

	#endregion

}