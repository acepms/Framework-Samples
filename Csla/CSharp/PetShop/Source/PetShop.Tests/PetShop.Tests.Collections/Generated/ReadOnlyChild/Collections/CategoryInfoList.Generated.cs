﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.3.10.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'Category.cs'.
//
//     Template: ReadOnlyChildList.Generated.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
#region Using declarations

using System;
using System.Collections.Generic;
using System.Linq;

using Csla;
using Csla.Data;

#endregion

namespace PetShop.Tests.Collections.ReadOnlyChild
{
    [Serializable]
    public partial class CategoryInfoList : ReadOnlyListBase<CategoryInfoList, CategoryInfo>
    {
        #region Contructor(s)

        public CategoryInfoList()
        { /* Require use of factory methods */ }

        #endregion
    
        #region Synchronous Factory Methods     

        /// <summary>
        /// Returns a <see cref="CategoryInfoList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="categoryId">No additional detail available.</param>
        /// <returns>A <see cref="CategoryInfoList"/> object of the specified criteria.</returns>
        internal static CategoryInfoList GetByCategoryId(System.String categoryId)
        {
            var criteria = new CategoryCriteria{CategoryId = categoryId};
            
            
            return DataPortal.FetchChild<CategoryInfoList>(criteria);
        }

        internal static CategoryInfoList GetByCriteria(CategoryCriteria criteria)
        {
            return DataPortal.Fetch<CategoryInfoList>(criteria);
        }

        internal static CategoryInfoList GetAll()
        {
            return DataPortal.FetchChild<CategoryInfoList>(new CategoryCriteria());
        }
    
        #endregion

        #region Asynchronous Factory Methods

        internal static void GetByCategoryIdAsync(System.String categoryId, EventHandler<DataPortalResult<CategoryInfoList>> handler)
        {
            var criteria = new CategoryCriteria{ CategoryId = categoryId};
            
            
            // Mark as child?
            var dp = new DataPortal<CategoryInfoList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetByCriteriaAsync(CategoryCriteria criteria, EventHandler<DataPortalResult<CategoryInfoList>> handler)
        {  
            var dp = new DataPortal<CategoryInfoList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetAllAsync(EventHandler<DataPortalResult<CategoryInfoList>> handler)
        {
            // Mark as child?
            var dp = new DataPortal<CategoryInfoList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(new CategoryCriteria());
        }

        #endregion

        #region DataPortal partial methods

        /// <summary>
        /// Codesmith generated stub method that is called when creating the child <see cref="CategoryInfo"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnCreating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="CategoryInfo"/> object has been created. 
        /// </summary>
        partial void OnCreated();

        /// <summary>
        /// Codesmith generated stub method that is called when fetching the child <see cref="CategoryInfo"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="CategoryInfoCriteria"/> object containg the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnFetching(CategoryCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="CategoryInfo"/> object has been fetched. 
        /// </summary>
        partial void OnFetched();

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="CategoryInfo"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="CategoryInfo"/> object. 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(SafeDataReader reader, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="CategoryInfo"/> object has been mapped. 
        /// </summary>
        partial void OnMapped();

        /// <summary>
        /// Codesmith generated stub method that is called when updating the <see cref="CategoryInfo"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnUpdating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="CategoryInfo"/> object has been updated. 
        /// </summary>
        partial void OnUpdated();
        partial void OnAddNewCore(ref CategoryInfo item, ref bool cancel);

        #endregion
        #region Exists Command

        /// <summary>
        /// Determines if a record exists in the CategoryInfo in the database for the specified criteria. 
        /// </summary>
        /// <param name="criteria">The criteria parameter is a <see cref="CategoryInfoList"/> object.</param>
        /// <returns>A boolean value of true is returned if a record is found.</returns>
        public static bool Exists(CategoryCriteria criteria)
        {
            return PetShop.Tests.Collections.ReadOnlyChild.CategoryInfo.Exists(criteria);
        }

        /// <summary>
        /// Determines if a record exists in the CategoryInfo in the database for the specified criteria. 
        /// </summary>
        public static void ExistsAsync(CategoryCriteria criteria, EventHandler<DataPortalResult<ExistsCommand>> handler)
        {
            PetShop.Tests.Collections.ReadOnlyChild.CategoryInfo.ExistsAsync(criteria,handler);
        }

        #endregion
 
        #region Enhancements

        public CategoryInfo GetCategoryInfo(System.String categoryId)
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