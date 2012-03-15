﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.3.10.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'ProductList.cs'.
//
//     Template: EditableChildList.Generated.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;

using Csla;
using Csla.Data;

namespace PetShop.Tests.ParameterizedSQL
{
    [Serializable]
    public partial class ProductList : BusinessListBase<ProductList, Product>
    {
        #region Constructor(s)

        public ProductList()
        { 
            AllowNew = true;
            MarkAsChild();
        }
        
        #endregion

        #region Synchronous Factory Methods 

        /// <summary>
        /// Creates a new object of type <see cref="ProductList"/>. 
        /// </summary>
        /// <returns>Returns a newly instantiated collection of type <see cref="ProductList"/>.</returns>
        internal static ProductList NewList()
        {
            return DataPortal.CreateChild<ProductList>();
        }     

        /// <summary>
        /// Returns a <see cref="ProductList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="productId">No additional detail available.</param>
        /// <returns>A <see cref="ProductList"/> object of the specified criteria.</returns>
        internal static ProductList GetByProductId(System.String productId)
        {
            var criteria = new ProductCriteria{ProductId = productId};
            
            
            return DataPortal.FetchChild<ProductList>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="ProductList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="name">No additional detail available.</param>
        /// <returns>A <see cref="ProductList"/> object of the specified criteria.</returns>
        internal static ProductList GetByName(System.String name)
        {
            var criteria = new ProductCriteria{Name = name};
            
            
            return DataPortal.FetchChild<ProductList>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="ProductList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="categoryId">No additional detail available.</param>
        /// <returns>A <see cref="ProductList"/> object of the specified criteria.</returns>
        internal static ProductList GetByCategoryId(System.String categoryId)
        {
            var criteria = new ProductCriteria{CategoryId = categoryId};
            
            
            return DataPortal.FetchChild<ProductList>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="ProductList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="categoryId">No additional detail available.</param>
        /// <param name="name">No additional detail available.</param>
        /// <returns>A <see cref="ProductList"/> object of the specified criteria.</returns>
        internal static ProductList GetByCategoryIdName(System.String categoryId, System.String name)
        {
            var criteria = new ProductCriteria{CategoryId = categoryId, Name = name};
            
            
            return DataPortal.FetchChild<ProductList>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="ProductList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="categoryId">No additional detail available.</param>
        /// <param name="productId">No additional detail available.</param>
        /// <param name="name">No additional detail available.</param>
        /// <returns>A <see cref="ProductList"/> object of the specified criteria.</returns>
        internal static ProductList GetByCategoryIdProductIdName(System.String categoryId, System.String productId, System.String name)
        {
            var criteria = new ProductCriteria{CategoryId = categoryId, ProductId = productId, Name = name};
            
            
            return DataPortal.FetchChild<ProductList>(criteria);
        }

        internal static ProductList GetByCriteria(ProductCriteria criteria)
        {
            return DataPortal.Fetch<ProductList>(criteria);
        }

        internal static ProductList GetAll()
        {
            return DataPortal.FetchChild<ProductList>(new ProductCriteria());
        }

        #endregion

        #region Asynchronous Factory Methods

        internal static void NewListAsync(EventHandler<DataPortalResult<ProductList>> handler)
        {
            var dp = new DataPortal<ProductList>();
            dp.CreateCompleted += handler;
            dp.BeginCreate();
        }

        internal static void GetByProductIdAsync(System.String productId, EventHandler<DataPortalResult<AsyncChildLoader<ProductList>>> handler)
        {
            var criteria = new ProductCriteria{ProductId = productId};
            
            DataPortal.BeginFetch<AsyncChildLoader<ProductList>>(criteria,handler);
        }

        internal static void GetByNameAsync(System.String name, EventHandler<DataPortalResult<AsyncChildLoader<ProductList>>> handler)
        {
            var criteria = new ProductCriteria{Name = name};
            
            DataPortal.BeginFetch<AsyncChildLoader<ProductList>>(criteria,handler);
        }

        internal static void GetByCategoryIdAsync(System.String categoryId, EventHandler<DataPortalResult<AsyncChildLoader<ProductList>>> handler)
        {
            var criteria = new ProductCriteria{CategoryId = categoryId};
            
            DataPortal.BeginFetch<AsyncChildLoader<ProductList>>(criteria,handler);
        }

        internal static void GetByCategoryIdNameAsync(System.String categoryId, System.String name, EventHandler<DataPortalResult<AsyncChildLoader<ProductList>>> handler)
        {
            var criteria = new ProductCriteria{CategoryId = categoryId, Name = name};
            
            DataPortal.BeginFetch<AsyncChildLoader<ProductList>>(criteria,handler);
        }

        internal static void GetByCategoryIdProductIdNameAsync(System.String categoryId, System.String productId, System.String name, EventHandler<DataPortalResult<AsyncChildLoader<ProductList>>> handler)
        {
            var criteria = new ProductCriteria{CategoryId = categoryId, ProductId = productId, Name = name};
            
            DataPortal.BeginFetch<AsyncChildLoader<ProductList>>(criteria,handler);
        }

        internal static void GetByCriteriaAsync(ProductCriteria criteria, EventHandler<DataPortalResult<ProductList>> handler)
        {  
            var dp = new DataPortal<ProductList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetAllAsync(EventHandler<DataPortalResult<AsyncChildLoader<ProductList>>> handler)
        {
            DataPortal.BeginFetch<AsyncChildLoader<ProductList>>(new ProductCriteria(),handler);
        }

        #endregion

        #region Method Overrides
        
        protected override Product AddNewCore()
        {
            Product item = PetShop.Tests.ParameterizedSQL.Product.NewProductChild();

            bool cancel = false;
            OnAddNewCore(ref item, ref cancel);
            if (!cancel)
            {
                // Check to see if someone set the item to null in the OnAddNewCore.
                if(item == null)
                    item = PetShop.Tests.ParameterizedSQL.Product.NewProductChild();

                // Pass the parent value down to the child.
                Category category = this.Parent as Category;
                if(category != null)
                    item.CategoryId = category.CategoryId;


                Add(item);
            }

            return item;
        }

        protected void AddNewCoreAsync(EventHandler<DataPortalResult<Product>> handler)
        {
            PetShop.Tests.ParameterizedSQL.Product.NewProductChildAsync((o, e) =>
            {
                if(e.Error == null)
                {
                    Add(e.Object);
                    handler.Invoke(this, new DataPortalResult<Product>(e.Object, null, null));
                }
            });
        }
        
        #endregion

        #region DataPortal partial methods

        /// <summary>
        /// Codesmith generated stub method that is called when creating the child <see cref="Product"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnCreating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Product"/> object has been created. 
        /// </summary>
        partial void OnCreated();

        /// <summary>
        /// Codesmith generated stub method that is called when fetching the child <see cref="Product"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="ProductCriteria"/> object containg the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnFetching(ProductCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Product"/> object has been fetched. 
        /// </summary>
        partial void OnFetched();

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="Product"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="Product"/> object. 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(SafeDataReader reader, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Product"/> object has been mapped. 
        /// </summary>
        partial void OnMapped();

        /// <summary>
        /// Codesmith generated stub method that is called when updating the <see cref="Product"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnUpdating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Product"/> object has been updated. 
        /// </summary>
        partial void OnUpdated();
        partial void OnAddNewCore(ref Product item, ref bool cancel);

        #endregion
        #region Exists Command

        /// <summary>
        /// Determines if a record exists in the Product in the database for the specified criteria. 
        /// </summary>
        /// <param name="criteria">The criteria parameter is a <see cref="ProductList"/> object.</param>
        /// <returns>A boolean value of true is returned if a record is found.</returns>
        public static bool Exists(ProductCriteria criteria)
        {
            return PetShop.Tests.ParameterizedSQL.Product.Exists(criteria);
        }

        /// <summary>
        /// Determines if a record exists in the Product in the database for the specified criteria. 
        /// </summary>
        public static void ExistsAsync(ProductCriteria criteria, EventHandler<DataPortalResult<ExistsCommand>> handler)
        {
            PetShop.Tests.ParameterizedSQL.Product.ExistsAsync(criteria,handler);
        }

        #endregion
 
        #region Enhancements

        public Product GetProduct(System.String productId)
        {
            return this.FirstOrDefault(i => i.ProductId == productId);
        }

        public bool Contains(System.String productId)
        {
            return this.Count(i => i.ProductId == productId) > 0;
        }
 
        public bool ContainsDeleted(System.String productId)
        {
            return DeletedList.Count(i => i.ProductId == productId) > 0;
        }
        
        public void Remove(System.String productId)
        {
            var item = this.FirstOrDefault(i => i.ProductId == productId);
            if (item != null)
                Remove(item);
        }

        #endregion
    }
}