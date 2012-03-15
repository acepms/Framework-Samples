﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.3.10.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'Category.cs'.
//
//     Template: DynamicRootList.Generated.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Linq;
using Csla;
using Csla.Data;

namespace PetShop.Tests.Collections.DynamicRoot
{
    [Serializable]
    public partial class CategoryList : DynamicBindingListBase<Category>
    {
        #region Constructor(s)

        public CategoryList()
        { 
            AllowNew = true;
        }

        #endregion

        #region Synchronous Factory Methods 

        /// <summary>
        /// Creates a new list collection of type <see cref="CategoryList"/>. 
        /// </summary>
        /// <returns>Returns a newly instantiated collection of type <see cref="CategoryList"/>.</returns>
        public static CategoryList NewList()
        {
            return DataPortal.Create<CategoryList>();
        }

        /// <summary>
        /// Returns a <see cref="CategoryList"/> collection of <see cref="Category"/> items with the specified criteria. 
        /// </summary>
        /// <param name="categoryId">No additional detail available.</param>
        /// <returns>Collection of all <see cref="Category"/> items.</returns>    
        public static CategoryList GetByCategoryId(System.String categoryId)
        {
            var criteria = new CategoryCriteria{CategoryId = categoryId};
            
        
            return DataPortal.Fetch<CategoryList>(criteria);
        }

        public static CategoryList GetByCriteria(CategoryCriteria criteria)
        {
            return DataPortal.Fetch<CategoryList>(criteria);
        }
    
        /// <summary>
        /// Returns a <see cref="CategoryList"/> collection of all <see cref="Category"/> items. 
        /// </summary>
        /// <returns>Collection of all Category items.</returns>    
        public static CategoryList GetAll()
        {
            return DataPortal.Fetch<CategoryList>(new CategoryCriteria());
        }

        #endregion

        #region Asynchronous Factory Methods

        public static void NewListAsync(EventHandler<DataPortalResult<CategoryList>> handler)
        {
            var dp = new DataPortal<CategoryList>();
            dp.CreateCompleted += handler;
            dp.BeginCreate();
        }

        public static void GetByCategoryIdAsync(System.String categoryId, EventHandler<DataPortalResult<CategoryList>> handler)
        {
             var criteria = new CategoryCriteria{CategoryId = categoryId};
            
            var dp = new DataPortal<CategoryList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        public static void GetByCriteriaAsync(CategoryCriteria criteria, EventHandler<DataPortalResult<CategoryList>> handler)
        {  
            var dp = new DataPortal<CategoryList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        public static void GetAllAsync(EventHandler<DataPortalResult<CategoryList>> handler)
        {
            var dp = new DataPortal<CategoryList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(new CategoryCriteria());
        }
        
        #endregion

        #region Method Overrides

        protected override object AddNewCore()
        {
            Category item = PetShop.Tests.Collections.DynamicRoot.Category.NewCategory();

            bool cancel = false;
            OnAddNewCore(ref item, ref cancel);
            if (!cancel)
            {
                // Check to see if someone set the item to null in the OnAddNewCore.
                if(item == null)
                    item = PetShop.Tests.Collections.DynamicRoot.Category.NewCategory();

                Add(item);
            }

            return item;
        }
        
        #endregion

        #region DataPortal partial methods

        /// <summary>
        /// Codesmith generated stub method that is called when creating the child <see cref="Category"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnCreating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Category"/> object has been created. 
        /// </summary>
        partial void OnCreated();

        /// <summary>
        /// Codesmith generated stub method that is called when fetching the child <see cref="Category"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="CategoryCriteria"/> object containg the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnFetching(CategoryCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Category"/> object has been fetched. 
        /// </summary>
        partial void OnFetched();

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="Category"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="Category"/> object. 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(SafeDataReader reader, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Category"/> object has been mapped. 
        /// </summary>
        partial void OnMapped();

        /// <summary>
        /// Codesmith generated stub method that is called when updating the <see cref="Category"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnUpdating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Category"/> object has been updated. 
        /// </summary>
        partial void OnUpdated();
        partial void OnAddNewCore(ref Category item, ref bool cancel);

        #endregion
        #region Exists Command

        /// <summary>
        /// Determines if a record exists in the Category in the database for the specified criteria. 
        /// </summary>
        /// <param name="criteria">The criteria parameter is a <see cref="CategoryList"/> object.</param>
        /// <returns>A boolean value of true is returned if a record is found.</returns>
        public static bool Exists(CategoryCriteria criteria)
        {
            return PetShop.Tests.Collections.DynamicRoot.Category.Exists(criteria);
        }

        /// <summary>
        /// Determines if a record exists in the Category in the database for the specified criteria. 
        /// </summary>
        public static void ExistsAsync(CategoryCriteria criteria, EventHandler<DataPortalResult<ExistsCommand>> handler)
        {
            PetShop.Tests.Collections.DynamicRoot.Category.ExistsAsync(criteria,handler);
        }

        #endregion
 
        #region Enhancements

        public Category GetCategory(System.String categoryId)
        {
            return this.FirstOrDefault(i => i.CategoryId == categoryId);
        }

        public bool Contains(System.String categoryId)
        {
            return this.Count(i => i.CategoryId == categoryId) > 0;
        }

        #endregion
    }
}