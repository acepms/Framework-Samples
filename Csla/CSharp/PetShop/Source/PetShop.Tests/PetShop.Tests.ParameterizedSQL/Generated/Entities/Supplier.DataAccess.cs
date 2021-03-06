﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.5.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.5.x.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'Supplier.cs'.
//
//     Template: EditableRoot.DataAccess.ParameterizedSQL.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Data;
using System.Data.SqlClient;

using Csla;
using Csla.Data;

namespace PetShop.Tests.ParameterizedSQL
{
    public partial class Supplier
    {
        [RunLocal]
        protected override void DataPortal_Create()
        {
            bool cancel = false;
            OnCreating(ref cancel);
            if (cancel) return;


            BusinessRules.CheckRules();

            OnCreated();
        }

        protected void DataPortal_Fetch(SupplierCriteria criteria)
        {
            bool cancel = false;
            OnFetching(criteria, ref cancel);
            if (cancel) return;

            string commandText = String.Format("SELECT [SuppId], [Name], [Status], [Addr1], [Addr2], [City], [State], [Zip], [Phone] FROM [dbo].[Supplier] {0}", ADOHelper.BuildWhereStatement(criteria.StateBag));
            using (var connection = new SqlConnection(ADOHelper.ConnectionString))
            {
                connection.Open();
                using (var command = new SqlCommand(commandText, connection))
                {
                    command.Parameters.AddRange(ADOHelper.SqlParameters(criteria.StateBag));
                    using(var reader = new SafeDataReader(command.ExecuteReader()))
                    {
                        if (reader.Read())
                            Map(reader);
                        else
                            throw new Exception(String.Format("The record was not found in 'dbo.Supplier' using the following criteria: {0}.", criteria));
                    }
                }
            }

            OnFetched();
        }

        [Transactional(TransactionalTypes.TransactionScope)]
        protected override void DataPortal_Insert()
        {
            bool cancel = false;
            OnInserting(ref cancel);
            if (cancel) return;

            const string commandText = "INSERT INTO [dbo].[Supplier] ([SuppId], [Name], [Status], [Addr1], [Addr2], [City], [State], [Zip], [Phone]) VALUES (@p_SuppId, @p_Name, @p_Status, @p_Addr1, @p_Addr2, @p_City, @p_State, @p_Zip, @p_Phone)";
            using (var connection = new SqlConnection(ADOHelper.ConnectionString))
            {
                connection.Open();
                using(var command = new SqlCommand(commandText, connection))
                {
                    command.Parameters.AddWithValue("@p_SuppId", this.SuppId);
                command.Parameters.AddWithValue("@p_Name", ADOHelper.NullCheck(this.Name));
                command.Parameters.AddWithValue("@p_Status", this.Status);
                command.Parameters.AddWithValue("@p_Addr1", ADOHelper.NullCheck(this.Addr1));
                command.Parameters.AddWithValue("@p_Addr2", ADOHelper.NullCheck(this.Addr2));
                command.Parameters.AddWithValue("@p_City", ADOHelper.NullCheck(this.City));
                command.Parameters.AddWithValue("@p_State", ADOHelper.NullCheck(this.State));
                command.Parameters.AddWithValue("@p_Zip", ADOHelper.NullCheck(this.Zip));
                command.Parameters.AddWithValue("@p_Phone", ADOHelper.NullCheck(this.Phone));

                    //result: The number of rows changed, inserted, or deleted. -1 for select statements; 0 if no rows were affected, or the statement failed. 
                    int result = command.ExecuteNonQuery();
                    if (result == 0)
                        throw new DBConcurrencyException("The entity is out of date on the client. Please update the entity and try again. This could also be thrown if the sql statement failed to execute.");

                    LoadProperty(_originalSuppIdProperty, this.SuppId);
                }

                FieldManager.UpdateChildren(this, connection);
            }

            OnInserted();

        }

        [Transactional(TransactionalTypes.TransactionScope)]
        protected override void DataPortal_Update()
        {
            bool cancel = false;
            OnUpdating(ref cancel);
            if (cancel) return;

            if(OriginalSuppId != SuppId)
            {
                // Insert new child.
                Supplier item = new Supplier {SuppId = SuppId, Name = Name, Status = Status, Addr1 = Addr1, Addr2 = Addr2, City = City, State = State, Zip = Zip, Phone = Phone};
                
                item = item.Save();

                // Mark editable child lists as dirty. This code may need to be updated to one-to-one relationships.
                foreach(Item itemToUpdate in Items)
                {
                itemToUpdate.Supplier = SuppId;
                }

                // Create a new connection.
                using (var connection = new SqlConnection(ADOHelper.ConnectionString))
                {
                    connection.Open();
                    FieldManager.UpdateChildren(this, connection);
                }

                // Delete the old.
                var criteria = new SupplierCriteria {SuppId = OriginalSuppId};
                
                DataPortal_Delete(criteria);

                // Mark the original as the new one.
                OriginalSuppId = SuppId;

                OnUpdated();

                return;
            }

            const string commandText = "UPDATE [dbo].[Supplier] SET [SuppId] = @p_SuppId, [Name] = @p_Name, [Status] = @p_Status, [Addr1] = @p_Addr1, [Addr2] = @p_Addr2, [City] = @p_City, [State] = @p_State, [Zip] = @p_Zip, [Phone] = @p_Phone WHERE [SuppId] = @p_OriginalSuppId; SELECT [SuppId] FROM [dbo].[Supplier] WHERE [SuppId] = @p_OriginalSuppId";
            using (var connection = new SqlConnection(ADOHelper.ConnectionString))
            {
                connection.Open();
                using(var command = new SqlCommand(commandText, connection))
                {
                    command.Parameters.AddWithValue("@p_OriginalSuppId", this.OriginalSuppId);
                command.Parameters.AddWithValue("@p_SuppId", this.SuppId);
                command.Parameters.AddWithValue("@p_Name", ADOHelper.NullCheck(this.Name));
                command.Parameters.AddWithValue("@p_Status", this.Status);
                command.Parameters.AddWithValue("@p_Addr1", ADOHelper.NullCheck(this.Addr1));
                command.Parameters.AddWithValue("@p_Addr2", ADOHelper.NullCheck(this.Addr2));
                command.Parameters.AddWithValue("@p_City", ADOHelper.NullCheck(this.City));
                command.Parameters.AddWithValue("@p_State", ADOHelper.NullCheck(this.State));
                command.Parameters.AddWithValue("@p_Zip", ADOHelper.NullCheck(this.Zip));
                command.Parameters.AddWithValue("@p_Phone", ADOHelper.NullCheck(this.Phone));

                    //result: The number of rows changed, inserted, or deleted. -1 for select statements; 0 if no rows were affected, or the statement failed. 
                    int result = command.ExecuteNonQuery();
                    if (result == 0)
                        throw new DBConcurrencyException("The entity is out of date on the client. Please update the entity and try again. This could also be thrown if the sql statement failed to execute.");

                    LoadProperty(_originalSuppIdProperty, this.SuppId);
                }

                FieldManager.UpdateChildren(this, connection);
            }

            OnUpdated();
        }

        protected override void DataPortal_DeleteSelf()
        {
            bool cancel = false;
            OnSelfDeleting(ref cancel);
            if (cancel) return;
            
            DataPortal_Delete(new SupplierCriteria (SuppId));
        
            OnSelfDeleted();
        }

        [Transactional(TransactionalTypes.TransactionScope)]
        protected void DataPortal_Delete(SupplierCriteria criteria)
        {
            bool cancel = false;
            OnDeleting(criteria, ref cancel);
            if (cancel) return;

            string commandText = String.Format("DELETE FROM [dbo].[Supplier] {0}", ADOHelper.BuildWhereStatement(criteria.StateBag));
            using (var connection = new SqlConnection(ADOHelper.ConnectionString))
            {
                connection.Open();
                using (var command = new SqlCommand(commandText, connection))
                {
                    command.Parameters.AddRange(ADOHelper.SqlParameters(criteria.StateBag));

                    //result: The number of rows changed, inserted, or deleted. -1 for select statements; 0 if no rows were affected, or the statement failed. 
                    int result = command.ExecuteNonQuery();
                    if (result == 0)
                        throw new DBConcurrencyException("The entity is out of date on the client. Please update the entity and try again. This could also be thrown if the sql statement failed to execute.");
                }
            }

            OnDeleted();
        }

        #region Map

        private void Map(SafeDataReader reader)
        {
            bool cancel = false;
            OnMapping(reader, ref cancel);
            if (cancel) return;

            using(BypassPropertyChecks)
            {
                LoadProperty(_suppIdProperty, reader["SuppId"]);
                LoadProperty(_originalSuppIdProperty, reader["SuppId"]);
                LoadProperty(_nameProperty, reader["Name"]);
                LoadProperty(_statusProperty, reader["Status"]);
                LoadProperty(_addr1Property, reader["Addr1"]);
                LoadProperty(_addr2Property, reader["Addr2"]);
                LoadProperty(_cityProperty, reader["City"]);
                LoadProperty(_stateProperty, reader["State"]);
                LoadProperty(_zipProperty, reader["Zip"]);
                LoadProperty(_phoneProperty, reader["Phone"]);
            }

            OnMapped();
        }
        
        private void Child_Fetch(SafeDataReader reader)
        {
            Map(reader);
        }

        #endregion
    }
}
