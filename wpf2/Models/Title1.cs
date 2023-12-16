using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wpf2.Models
{
        public partial class Title1
        {
            public int Id { get; set; }

            public string Title { get; set; } = null;

            public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();
        }
    }