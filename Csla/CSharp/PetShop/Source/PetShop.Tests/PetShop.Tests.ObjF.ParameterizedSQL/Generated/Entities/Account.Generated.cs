﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.5.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.5.x.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'Account.cs'.
//
//     Template: EditableChild.Generated.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Threading.Tasks;

using Csla;
using Csla.Data;
using System.Data.SqlClient;

using Csla.Rules;

namespace PetShop.Tests.ObjF.ParameterizedSQL
{
    [Serializable]
    [Csla.Server.ObjectFactory(FactoryNames.AccountFactoryName)]
    public partial class Account : BusinessBase<Account>
    {
        #region Contructor(s)

        public Account()
        { /* Require use of factory methods */ }

        #endregion

 
        #region Business Rules

        /// <summary>
        /// Contains the CodeSmith generated validation rules.
        /// </summary>
        protected override void AddBusinessRules()
        {
            // Call the base class, if this call isn't made than any declared System.ComponentModel.DataAnnotations rules will not work.
            base.AddBusinessRules();

            if(AddBusinessValidationRules())
                return;

            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_emailProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_emailProperty, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_firstNameProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_firstNameProperty, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_lastNameProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_lastNameProperty, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_address1Property));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_address1Property, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_address2Property, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_cityProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_cityProperty, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_stateProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_stateProperty, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_zipProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_zipProperty, 20));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_countryProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_countryProperty, 20));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_phoneProperty, 20));
        }

        #endregion

        #region Properties

        private static readonly PropertyInfo<System.Int32> _accountIdProperty = RegisterProperty<System.Int32>(p => p.AccountId, "Account Id");
        [System.ComponentModel.DataObjectField(true, true)]
        public System.Int32 AccountId
        {
            get { return GetProperty(_accountIdProperty); }
            internal set{ SetProperty(_accountIdProperty, value); }
        }

        private static readonly PropertyInfo<System.Int32> _uniqueIDProperty = RegisterProperty<System.Int32>(p => p.UniqueID, "Unique I D");
        public System.Int32 UniqueID
        {
            get { return GetProperty(_uniqueIDProperty); }
            set{ SetProperty(_uniqueIDProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _emailProperty = RegisterProperty<System.String>(p => p.Email, "Email");
        public System.String Email
        {
            get { return GetProperty(_emailProperty); }
            set{ SetProperty(_emailProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _firstNameProperty = RegisterProperty<System.String>(p => p.FirstName, "First Name");
        public System.String FirstName
        {
            get { return GetProperty(_firstNameProperty); }
            set{ SetProperty(_firstNameProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _lastNameProperty = RegisterProperty<System.String>(p => p.LastName, "Last Name");
        public System.String LastName
        {
            get { return GetProperty(_lastNameProperty); }
            set{ SetProperty(_lastNameProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _address1Property = RegisterProperty<System.String>(p => p.Address1, "Address 1");
        public System.String Address1
        {
            get { return GetProperty(_address1Property); }
            set{ SetProperty(_address1Property, value); }
        }

        private static readonly PropertyInfo<System.String> _address2Property = RegisterProperty<System.String>(p => p.Address2, "Address 2", (System.String)null);
        public System.String Address2
        {
            get { return GetProperty(_address2Property); }
            set{ SetProperty(_address2Property, value); }
        }

        private static readonly PropertyInfo<System.String> _cityProperty = RegisterProperty<System.String>(p => p.City, "City");
        public System.String City
        {
            get { return GetProperty(_cityProperty); }
            set{ SetProperty(_cityProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _stateProperty = RegisterProperty<System.String>(p => p.State, "State");
        public System.String State
        {
            get { return GetProperty(_stateProperty); }
            set{ SetProperty(_stateProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _zipProperty = RegisterProperty<System.String>(p => p.Zip, "Zip");
        public System.String Zip
        {
            get { return GetProperty(_zipProperty); }
            set{ SetProperty(_zipProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _countryProperty = RegisterProperty<System.String>(p => p.Country, "Country");
        public System.String Country
        {
            get { return GetProperty(_countryProperty); }
            set{ SetProperty(_countryProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _phoneProperty = RegisterProperty<System.String>(p => p.Phone, "Phone", (System.String)null);
        public System.String Phone
        {
            get { return GetProperty(_phoneProperty); }
            set{ SetProperty(_phoneProperty, value); }
        }

        // ManyToOne
        private static readonly PropertyInfo<Profile> _profileProperty = RegisterProperty<Profile>(p => p.Profile, Csla.RelationshipTypes.Child);
        public Profile Profile
        {
            get
            {
                bool cancel = false;
                OnChildLoading(_profileProperty, ref cancel);

                if (!cancel)
                {
                    if(!FieldManager.FieldExists(_profileProperty))
                    {
                        var criteria = new PetShop.Tests.ObjF.ParameterizedSQL.ProfileCriteria {UniqueID = UniqueID};
                        
                        if(PetShop.Tests.ObjF.ParameterizedSQL.Profile.Exists(criteria))
                            LoadProperty(_profileProperty, PetShop.Tests.ObjF.ParameterizedSQL.Profile.GetByUniqueID(UniqueID));
                    }
                }

                return GetProperty(_profileProperty); 
            }
        }


        #endregion

        #region Synchronous Factory Methods 

        /// <summary>
        /// Creates a new object of type <see cref="Account"/>. 
        /// </summary>
        /// <returns>Returns a newly instantiated collection of type <see cref="Account"/>.</returns>
        internal static Account NewAccount()
        {
            return DataPortal.CreateChild<Account>();
        }

        /// <summary>
        /// Returns a <see cref="Account"/> object of the specified criteria. 
        /// </summary>
        /// <param name="accountId">No additional detail available.</param>
        /// <returns>A <see cref="Account"/> object of the specified criteria.</returns>
        internal static Account GetByAccountId(System.Int32 accountId)
        {
            var criteria = new AccountCriteria {AccountId = accountId};
            
        
            return DataPortal.Fetch<Account>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Account"/> object of the specified criteria. 
        /// </summary>
        /// <param name="uniqueID">No additional detail available.</param>
        /// <returns>A <see cref="Account"/> object of the specified criteria.</returns>
        internal static Account GetByUniqueID(System.Int32 uniqueID)
        {
            var criteria = new AccountCriteria {UniqueID = uniqueID};
            
        
            return DataPortal.Fetch<Account>(criteria);
        }

        #endregion

        #region Asynchronous Factory Methods

        internal static async Task<Account> NewAccountAsync()
        {
            return await DataPortal.CreateAsync<Account>();
        }

        internal static async Task<Account> GetByAccountIdAsync(System.Int32 accountId)
        {
            var criteria = new AccountCriteria{ AccountId = accountId};
            
            
            return await DataPortal.FetchAsync<AsyncChildLoader<Account>>(criteria).ContinueWith(t => t.Result.Child);
        }

        internal static async Task<Account> GetByUniqueIDAsync(System.Int32 uniqueID)
        {
            var criteria = new AccountCriteria{ UniqueID = uniqueID};
            
            
            return await DataPortal.FetchAsync<AsyncChildLoader<Account>>(criteria).ContinueWith(t => t.Result.Child);
        }

        #endregion


        #region Overridden properties

        /// <summary>
        /// Returns true if the business object or any of its children properties are dirty.
        /// </summary>
        public override bool IsDirty
        {
            get
            {
                if (base.IsDirty) return true;
                if (FieldManager.FieldExists(_profileProperty) && Profile.IsDirty) return true;

                return false;
            }
        }

        #endregion
        #region ChildPortal partial methods

        /// <summary>
        /// CodeSmith generated stub method that is called when creating the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnChildCreating(ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object has been created. 
        /// </summary>
        partial void OnChildCreated();

        /// <summary>
        /// CodeSmith generated stub method that is called when fetching the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="AccountCriteria"/> object containing the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnChildFetching(AccountCriteria criteria, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object has been fetched. 
        /// </summary>
        partial void OnChildFetched();

        /// <summary>
        /// CodeSmith generated stub method that is called when mapping the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when mapping the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(SafeDataReader reader, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object has been mapped. 
        /// </summary>
        partial void OnMapped();

        /// <summary>
        /// CodeSmith generated stub method that is called when inserting the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object insertion should proceed.</param>
        partial void OnChildInserting(ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when inserting the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object insertion should proceed.</param>
        partial void OnChildInserting(SqlConnection connection, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when inserting the child <see cref="Account"/> object. 
        /// </summary>
        partial void OnChildInserting(Profile profile, SqlConnection connection, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object has been inserted. 
        /// </summary>
        partial void OnChildInserted();

        /// <summary>
        /// CodeSmith generated stub method that is called when updating the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnChildUpdating(ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when updating the child <see cref="Account"/> object. 
        /// </summary>
        partial void OnChildUpdating(SqlConnection connection, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when updating the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object insertion should proceed.</param>
        partial void OnChildUpdating(Profile profile, SqlConnection connection, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object has been updated. 
        /// </summary>
        partial void OnChildUpdated();

        /// <summary>
        /// CodeSmith generated stub method that is called when self deleting the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object self deletion should proceed.</param>
        partial void OnChildSelfDeleting(ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when self deleting the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object self deletion should proceed.</param>
        partial void OnChildSelfDeleting(SqlConnection connection, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object has been deleted. 
        /// </summary>
        partial void OnChildSelfDeleted();

        /// <summary>
        /// CodeSmith generated stub method that is called when deleting the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="AccountCriteria"/> object containing the criteria of the object to delete.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object deletion should proceed.</param>
        partial void OnDeleting(AccountCriteria criteria, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called when deleting the child <see cref="Account"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="AccountCriteria"/> object containing the criteria of the object to delete.</param>
        /// <param name="connection"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object deletion should proceed.</param>
        partial void OnDeleting(AccountCriteria criteria, SqlConnection connection, ref bool cancel);

        /// <summary>
        /// CodeSmith generated stub method that is called after the child <see cref="Account"/> object with the specified criteria has been deleted. 
        /// </summary>
        partial void OnDeleted();
        partial void OnChildLoading(Csla.Core.IPropertyInfo childProperty, ref bool cancel);

        #endregion

        #region Exists Command

        /// <summary>
        /// Determines if a record exists in the Account table in the database for the specified criteria. 
        /// </summary>
        /// <param name="criteria">The criteria parameter is an <see cref="Account"/> object.</param>
        /// <returns>A boolean value of true is returned if a record is found.</returns>
        public static bool Exists(AccountCriteria criteria)
        {
            return PetShop.Tests.ObjF.ParameterizedSQL.ExistsCommand.Execute(criteria);
        }

        /// <summary>
        /// Determines if a record exists in the Account table in the database for the specified criteria. 
        /// </summary>
        public static async Task<bool> ExistsAsync(AccountCriteria criteria)
        {
            return await PetShop.Tests.ObjF.ParameterizedSQL.ExistsCommand.ExecuteAsync(criteria);
        }

        #endregion

    }
}