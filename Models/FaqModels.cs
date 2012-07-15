
using System;

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
}