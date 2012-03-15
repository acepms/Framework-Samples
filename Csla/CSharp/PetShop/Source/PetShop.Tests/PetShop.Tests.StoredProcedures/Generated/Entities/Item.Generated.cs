﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.3.10.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'Item.cs'.
//
//     Template: SwitchableObject.Generated.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
using System;

using Csla;
using Csla.Data;
using System.Data.SqlClient;
using Csla.Rules;

namespace PetShop.Tests.StoredProcedures
{
    [Serializable]
    public partial class Item : BusinessBase<Item>
    {
        #region Contructor(s)

        public Item()
        { /* Require use of factory methods */ }

        #endregion

        #region Business Rules

        /// <summary>
        /// Contains the Codesmith generated validation rules.
        /// </summary>
        protected override void AddBusinessRules()
        {
            // Call the base class, if this call isn't made than any declared System.ComponentModel.DataAnnotations rules will not work.
            base.AddBusinessRules();

            if(AddBusinessValidationRules())
                return;

            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_itemIdProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_itemIdProperty, 10));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.Required(_productIdProperty));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_productIdProperty, 10));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_statusProperty, 2));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_nameProperty, 80));
            BusinessRules.AddRule(new Csla.Rules.CommonRules.MaxLength(_imageProperty, 80));
        }

        #endregion


        #region Properties

        private static readonly PropertyInfo<System.String> _itemIdProperty = RegisterProperty<System.String>(p => p.ItemId, "Item Id");
        [System.ComponentModel.DataObjectField(true, false)]
        public System.String ItemId
        {
            get { return GetProperty(_itemIdProperty); }
            set{ SetProperty(_itemIdProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _originalItemIdProperty = RegisterProperty<System.String>(p => p.OriginalItemId, "Original Item Id");
        /// <summary>
        /// Holds the original value for ItemId. This is used for non identity primary keys.
        /// </summary>
        internal System.String OriginalItemId
        {
            get { return GetProperty(_originalItemIdProperty); }
            set{ SetProperty(_originalItemIdProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _productIdProperty = RegisterProperty<System.String>(p => p.ProductId, "Product Id");
        public System.String ProductId
        {
            get { return GetProperty(_productIdProperty); }
            set{ SetProperty(_productIdProperty, value); }
        }

        private static readonly PropertyInfo<System.Decimal?> _listPriceProperty = RegisterProperty<System.Decimal?>(p => p.ListPrice, "List Price", (System.Decimal?)null);
        public System.Decimal? ListPrice
        {
            get { return GetProperty(_listPriceProperty); }
            set{ SetProperty(_listPriceProperty, value); }
        }

        private static readonly PropertyInfo<System.Decimal?> _unitCostProperty = RegisterProperty<System.Decimal?>(p => p.UnitCost, "Unit Cost", (System.Decimal?)null);
        public System.Decimal? UnitCost
        {
            get { return GetProperty(_unitCostProperty); }
            set{ SetProperty(_unitCostProperty, value); }
        }

        private static readonly PropertyInfo<System.Int32?> _supplierProperty = RegisterProperty<System.Int32?>(p => p.Supplier, "Supplier", (System.Int32?)null);
        public System.Int32? Supplier
        {
            get { return GetProperty(_supplierProperty); }
            set{ SetProperty(_supplierProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _statusProperty = RegisterProperty<System.String>(p => p.Status, "Status", (System.String)null);
        public System.String Status
        {
            get { return GetProperty(_statusProperty); }
            set{ SetProperty(_statusProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _nameProperty = RegisterProperty<System.String>(p => p.Name, "Name", (System.String)null);
        public System.String Name
        {
            get { return GetProperty(_nameProperty); }
            set{ SetProperty(_nameProperty, value); }
        }

        private static readonly PropertyInfo<System.String> _imageProperty = RegisterProperty<System.String>(p => p.Image, "Image", (System.String)null);
        public System.String Image
        {
            get { return GetProperty(_imageProperty); }
            set{ SetProperty(_imageProperty, value); }
        }



        // ManyToOne
        private static readonly PropertyInfo<Product> _productsProperty = RegisterProperty<Product>(p => p.Products, Csla.RelationshipTypes.Child);
        public Product Products
        {
            get
            {
                bool cancel = false;
                OnChildLoading(_productsProperty, ref cancel);

                if (!cancel)
                {
                    if(!FieldManager.FieldExists(_productsProperty))
                    {
                        var criteria = new PetShop.Tests.StoredProcedures.ProductCriteria {ProductId = ProductId};
                        
                        if(PetShop.Tests.StoredProcedures.Product.Exists(criteria))
                            LoadProperty(_productsProperty, PetShop.Tests.StoredProcedures.Product.GetByProductId(ProductId));
                    }
                }

                return GetProperty(_productsProperty); 
            }
        }

        // ManyToZeroOrOne
        private static readonly PropertyInfo<Supplier> _suppliersProperty = RegisterProperty<Supplier>(p => p.Suppliers, Csla.RelationshipTypes.Child);
        public Supplier Suppliers
        {
            get
            {
                bool cancel = false;
                OnChildLoading(_suppliersProperty, ref cancel);

                if (!cancel)
                {
                    if(!Supplier.HasValue) 
                        return null;

                    if(!FieldManager.FieldExists(_suppliersProperty))
                    {
                        var criteria = new PetShop.Tests.StoredProcedures.SupplierCriteria {};
                        if(Supplier.HasValue) criteria.SuppId = Supplier.Value;
                        if(PetShop.Tests.StoredProcedures.Supplier.Exists(criteria))
                            LoadProperty(_suppliersProperty, PetShop.Tests.StoredProcedures.Supplier.GetBySuppId(Supplier.Value));
                    }
                }

                return GetProperty(_suppliersProperty); 
            }
        }



        #endregion

        #region Synchronous Root Factory Methods 

        /// <summary>
        /// Creates a new object of type <see cref="Item"/>. 
        /// </summary>
        /// <returns>Returns a newly instantiated collection of type <see cref="Item"/>.</returns>    
        public static Item NewItem()
        {
            return DataPortal.Create<Item>();
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="itemId">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>
        public static Item GetByItemId(System.String itemId)
        {
            var criteria = new ItemCriteria {ItemId = itemId};
            
            
            return DataPortal.Fetch<Item>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="productId">No additional detail available.</param>
        /// <param name="itemId">No additional detail available.</param>
        /// <param name="listPrice">No additional detail available.</param>
        /// <param name="name">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>
        public static Item GetByProductIdItemIdListPriceName(System.String productId, System.String itemId, System.Decimal? listPrice, System.String name)
        {
            var criteria = new ItemCriteria {ProductId = productId, ItemId = itemId, Name = name};
                            if(listPrice.HasValue) criteria.ListPrice = listPrice.Value;
            
            return DataPortal.Fetch<Item>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="productId">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>
        public static Item GetByProductId(System.String productId)
        {
            var criteria = new ItemCriteria {ProductId = productId};
            
            
            return DataPortal.Fetch<Item>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="supplier">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>
        public static Item GetBySupplier(System.Int32? supplier)
        {
            var criteria = new ItemCriteria {};
                            if(supplier.HasValue) criteria.Supplier = supplier.Value;
            
            return DataPortal.Fetch<Item>(criteria);
        }

        public static void DeleteItem(System.String itemId)
        {
                DataPortal.Delete<Item>(new ItemCriteria (itemId));
        }

        #endregion

        #region Asynchronous Root Factory Methods
        
        public static void NewItemAsync(EventHandler<DataPortalResult<Item>> handler)
        {
            var dp = new DataPortal<Item>();
            dp.CreateCompleted += handler;
            dp.BeginCreate();
        }

        public static void GetByItemIdAsync(System.String itemId, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ItemId = itemId};
            

            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        public static void GetByProductIdItemIdListPriceNameAsync(System.String productId, System.String itemId, System.Decimal? listPrice, System.String name, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ProductId = productId, ItemId = itemId, Name = name};
                            if(listPrice.HasValue) criteria.ListPrice = listPrice.Value;

            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        public static void GetByProductIdAsync(System.String productId, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ProductId = productId};
            

            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        public static void GetBySupplierAsync(System.Int32? supplier, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{};
                            if(supplier.HasValue) criteria.Supplier = supplier.Value;

            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        public static void DeleteItemAsync(System.String itemId, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ItemId = itemId};
            

            var dp = new DataPortal<Item>();
            dp.DeleteCompleted += handler;
            dp.BeginDelete(criteria);
        }
        
        #endregion

        #region Synchronous Child Factory Methods 

        /// <summary>
        /// Creates a new object of type <see cref="Item"/>. 
        /// </summary>
        /// <returns>Returns a newly instantiated collection of type <see cref="Item"/>.</returns>
        internal static Item NewItemChild()
        {
            return DataPortal.CreateChild<Item>();
        }

        internal static Item GetItem(SafeDataReader reader)
        {
            return DataPortal.FetchChild<Item>(reader);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="itemId">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>

        internal static Item GetByItemIdChild(System.String itemId)
        {
            var criteria = new ItemCriteria {ItemId = itemId};
            

            return DataPortal.FetchChild<Item>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="productId">No additional detail available.</param>
        /// <param name="itemId">No additional detail available.</param>
        /// <param name="listPrice">No additional detail available.</param>
        /// <param name="name">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>

        internal static Item GetByProductIdItemIdListPriceNameChild(System.String productId, System.String itemId, System.Decimal? listPrice, System.String name)
        {
            var criteria = new ItemCriteria {ProductId = productId, ItemId = itemId, Name = name};
                            if(listPrice.HasValue) criteria.ListPrice = listPrice.Value;

            return DataPortal.FetchChild<Item>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="productId">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>

        internal static Item GetByProductIdChild(System.String productId)
        {
            var criteria = new ItemCriteria {ProductId = productId};
            

            return DataPortal.FetchChild<Item>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="Item"/> object of the specified criteria. 
        /// </summary>
        /// <param name="supplier">No additional detail available.</param>
        /// <returns>A <see cref="Item"/> object of the specified criteria.</returns>

        internal static Item GetBySupplierChild(System.Int32? supplier)
        {
            var criteria = new ItemCriteria {};
                            if(supplier.HasValue) criteria.Supplier = supplier.Value;

            return DataPortal.FetchChild<Item>(criteria);
        }

        #endregion

        #region Asynchronous Child Factory Methods
        
        internal static void NewItemChildAsync(EventHandler<DataPortalResult<Item>> handler)
        {
            DataPortal<Item> dp = new DataPortal<Item>();
            dp.CreateCompleted += handler;
            dp.BeginCreate();
        }

        internal static void GetByItemIdChildAsync(System.String itemId, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ ItemId = itemId};
            
            
            // Mark as child?
            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetByProductIdItemIdListPriceNameChildAsync(System.String productId, System.String itemId, System.Decimal? listPrice, System.String name, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ ProductId = productId, ItemId = itemId, Name = name};
                            if(listPrice.HasValue) criteria.ListPrice = listPrice.Value;
            
            // Mark as child?
            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetByProductIdChildAsync(System.String productId, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ ProductId = productId};
            
            
            // Mark as child?
            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetBySupplierChildAsync(System.Int32? supplier, EventHandler<DataPortalResult<Item>> handler)
        {
            var criteria = new ItemCriteria{ };
                            if(supplier.HasValue) criteria.Supplier = supplier.Value;
            
            // Mark as child?
            var dp = new DataPortal<Item>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        #endregion

        #region DataPortal partial methods

        /// <summary>
        /// Codesmith generated stub method that is called when creating the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnCreating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object has been created. 
        /// </summary>
        partial void OnCreated();

        /// <summary>
        /// Codesmith generated stub method that is called when fetching the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="ItemCriteria"/> object containg the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnFetching(ItemCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object has been fetched. 
        /// </summary>    
        partial void OnFetched();

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(ref bool cancel);
 
        /// <summary>
        /// Codesmith generated stub method that is called when mapping the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(SafeDataReader reader, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object has been mapped. 
        /// </summary>
        partial void OnMapped();

        /// <summary>
        /// Codesmith generated stub method that is called when inserting the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object insertion should proceed.</param>
        partial void OnInserting(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object has been inserted. 
        /// </summary>
        partial void OnInserted();

        /// <summary>
        /// Codesmith generated stub method that is called when updating the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnUpdating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object has been updated. 
        /// </summary>
        partial void OnUpdated();

        /// <summary>
        /// Codesmith generated stub method that is called when self deleting the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object self deletion should proceed.</param>
        partial void OnSelfDeleting(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object has been deleted. 
        /// </summary>
        partial void OnSelfDeleted();

        /// <summary>
        /// Codesmith generated stub method that is called when deleting the <see cref="Item"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="ItemCriteria"/> object containg the criteria of the object to delete.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object deletion should proceed.</param>
        partial void OnDeleting(ItemCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="Item"/> object with the specified criteria has been deleted. 
        /// </summary>
        partial void OnDeleted();
        partial void OnChildLoading(Csla.Core.IPropertyInfo childProperty, ref bool cancel);

        #endregion

        #region ChildPortal partial methods


        /// <summary>
        /// Codesmith generated stub method that is called when creating the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnChildCreating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Item"/> object has been created. 
        /// </summary>
        partial void OnChildCreated();

        /// <summary>
        /// Codesmith generated stub method that is called when fetching the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="ItemCriteria"/> object containg the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnChildFetching(ItemCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Item"/> object has been fetched. 
        /// </summary>
        partial void OnChildFetched();

        /// <summary>
        /// Codesmith generated stub method that is called when inserting the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object insertion should proceed.</param>
        partial void OnChildInserting(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when inserting the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object insertion should proceed.</param>
        partial void OnChildInserting(SqlConnection connection, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when inserting the child <see cref="Item"/> object. 
        /// </summary>
        partial void OnChildInserting(Product product, Supplier supplier, SqlConnection connection, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Item"/> object has been inserted. 
        /// </summary>
        partial void OnChildInserted();

        /// <summary>
        /// Codesmith generated stub method that is called when updating the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnChildUpdating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when updating the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnChildUpdating(SqlConnection connection, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when updating the child <see cref="Item"/> object. 
        /// </summary>
        partial void OnChildUpdating(Product product, Supplier supplier, SqlConnection connection, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Item"/> object has been updated. 
        /// </summary>
        partial void OnChildUpdated();

        /// <summary>
        /// Codesmith generated stub method that is called when self deleting the child <see cref="Item"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object self deletion should proceed.</param>
        partial void OnChildSelfDeleting(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="Item"/> object has been deleted. 
        /// </summary>
        partial void OnChildSelfDeleted();
        #endregion


        #region Exists Command

        /// <summary>
        /// Determines if a record exists in the Item table in the database for the specified criteria. 
        /// </summary>
        /// <param name="criteria">The criteria parameter is an <see cref="Item"/> object.</param>
        /// <returns>A boolean value of true is returned if a record is found.</returns>
        public static bool Exists(ItemCriteria criteria)
        {
            return PetShop.Tests.StoredProcedures.ExistsCommand.Execute(criteria);
        }

        /// <summary>
        /// Determines if a record exists in the Item table in the database for the specified criteria. 
        /// </summary>
        public static void ExistsAsync(ItemCriteria criteria, EventHandler<DataPortalResult<ExistsCommand>> handler)
        {
            PetShop.Tests.StoredProcedures.ExistsCommand.ExecuteAsync(criteria, handler);
        }

        #endregion

    }
}