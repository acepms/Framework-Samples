﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.3.10.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'CartList.cs'.
//
//     Template: EditableChildList.DataAccess.ParameterizedSQL.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
#if !SILVERLIGHT

using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

using Csla;
using Csla.Data;


namespace PetShop.Business
{
    public partial class CartList
    {
        protected override void Child_Create()
        {
            bool cancel = false;
            OnCreating(ref cancel);
            if (cancel) return;
        
            OnCreated();
        }
    
        private void Child_Fetch(CartCriteria criteria)
        {
            bool cancel = false;
            OnFetching(criteria, ref cancel);
            if (cancel) return;

            RaiseListChangedEvents = false;

            // Fetch Child objects.
            string commandText = String.Format("SELECT [CartId], [UniqueID], [ItemId], [Name], [Type], [Price], [CategoryId], [ProductId], [IsShoppingCart], [Quantity] FROM [dbo].[Cart] {0}", ADOHelper.BuildWhereStatement(criteria.StateBag));
            using (var connection = new SqlConnection(ADOHelper.ConnectionString))
            {
                connection.Open();
                using (var command = new SqlCommand(commandText, connection))
                {
                    command.Parameters.AddRange(ADOHelper.SqlParameters(criteria.StateBag));

                    using(var reader = new SafeDataReader(command.ExecuteReader()))
                    {
                        if(reader.Read())
                        {
                            do
                            {
                                this.Add(PetShop.Business.Cart.GetCart(reader));
                            } while(reader.Read());
                        }
                    }
                }
            }

            RaiseListChangedEvents = true;

            OnFetched();
        }
        
        /// <summary>
        /// Updates the child object.
        /// </summary>
        /// <param name="parameters">The parameters collection may contain more parameters than needed based on the context it was called. We need to filter this list.</param>
        protected override void Child_Update(params object[] parameters)
        {
            bool cancel = false;
            OnUpdating(ref cancel);
            if (cancel) return;

            // We require that one of the parameters be a connection so we can do the CRUD operations.
            var connection = parameters.OfType<SqlConnection>().FirstOrDefault();
            if (connection == null)
                throw new ArgumentNullException("parameters", "Must contain a SqlConnection parameter.");

            RaiseListChangedEvents = false;

            foreach (var item in DeletedList)
            {
                DataPortal.UpdateChild(item, connection);
            }

            DeletedList.Clear();
            
            // Trim down the list to what is actually contained in the child class.
            var list = new System.Collections.Generic.Dictionary<string, object>() {};
            foreach (object o in parameters)
            {
                if(o == null) continue;

                var key = o.GetType().ToString();
                if (!list.ContainsKey(key))
                    list.Add(key, o);
            }

            foreach (var item in Items)
            {
                DataPortal.UpdateChild(item, list.Values.ToArray());
            }

            RaiseListChangedEvents = true;

            OnUpdated();
        }
    }
}
#endif
