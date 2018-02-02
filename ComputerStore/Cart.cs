using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace ComputerStore
{
    public class Cart
    {
        public List<CartItem> Items { get; set; }

        public Cart()
        {
            Items = new List<CartItem>();
        }
        private int ItemIndexOf(int ID)
        {
            foreach(CartItem item in Items)
            {
                if(item.ID == ID)
                {
                    return Items.IndexOf(item);
                }
            }
            return -1;
        }

        public void Insert(CartItem item)
        {
            int index = ItemIndexOf(item.ID);

            if(index== -1)

            {
                Items.Add(item);
            }
            else
            {
                Items[index].Quantity++;
            }
        }

        public void Delete(int RowID)
        {
            Items.RemoveAt(RowID);

        }

        public void Update(int RowID, int Quantity)
        {
            if (Quantity > 0)
            {
                Items[RowID].Quantity = Quantity;
            }
            else
            {
                Delete(RowID);
            }

        }

        public double GrandTotal
        {
            get
            {
                if (Items == null)
                {
                    return 0;
                }
                else
                {
                    double GrandTotal = 0;
                    foreach (CartItem item in Items)
                    {
                        GrandTotal += item.Quantity * item.Price;
                    }
                    return GrandTotal;
                }
            }
        }
    }  
}