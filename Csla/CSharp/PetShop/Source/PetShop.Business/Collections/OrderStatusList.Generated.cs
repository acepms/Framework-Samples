﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.3, CSLA Templates: v4.0.0.0, CSLA Framework: v4.3.10.
//     Changes to this file will be lost after each regeneration.
//     To extend the functionality of this class, please modify the partial class 'OrderStatusList.cs'.
//
//     Template: EditableChildList.Generated.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;

using Csla;
#if SILVERLIGHT
using Csla.Serialization;
#else
using Csla.Data;
#endif

namespace PetShop.Business
{
    [Serializable]
    public partial class OrderStatusList : BusinessListBase<OrderStatusList, OrderStatus>
    {
        #region Constructor(s)

        public OrderStatusList()
        { 
            AllowNew = true;
            MarkAsChild();
        }
        
        #endregion

        #region Synchronous Factory Methods 
#if !SILVERLIGHT

        /// <summary>
        /// Creates a new object of type <see cref="OrderStatusList"/>. 
        /// </summary>
        /// <returns>Returns a newly instantiated collection of type <see cref="OrderStatusList"/>.</returns>
        internal static OrderStatusList NewList()
        {
            return DataPortal.CreateChild<OrderStatusList>();
        }     

        /// <summary>
        /// Returns a <see cref="OrderStatusList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="orderId">No additional detail available.</param>
        /// <param name="lineNum">No additional detail available.</param>
        /// <returns>A <see cref="OrderStatusList"/> object of the specified criteria.</returns>
        internal static OrderStatusList GetByOrderIdLineNum(System.Int32 orderId, System.Int32 lineNum)
        {
            var criteria = new OrderStatusCriteria{OrderId = orderId, LineNum = lineNum};
            
            
            return DataPortal.FetchChild<OrderStatusList>(criteria);
        }

        /// <summary>
        /// Returns a <see cref="OrderStatusList"/> object of the specified criteria. 
        /// </summary>
        /// <param name="orderId">No additional detail available.</param>
        /// <returns>A <see cref="OrderStatusList"/> object of the specified criteria.</returns>
        internal static OrderStatusList GetByOrderId(System.Int32 orderId)
        {
            var criteria = new OrderStatusCriteria{OrderId = orderId};
            
            
            return DataPortal.FetchChild<OrderStatusList>(criteria);
        }

        internal static OrderStatusList GetByCriteria(OrderStatusCriteria criteria)
        {
            return DataPortal.Fetch<OrderStatusList>(criteria);
        }

        internal static OrderStatusList GetAll()
        {
            return DataPortal.FetchChild<OrderStatusList>(new OrderStatusCriteria());
        }

#endif
        #endregion

        #region Asynchronous Factory Methods

        internal static void NewListAsync(EventHandler<DataPortalResult<OrderStatusList>> handler)
        {
            var dp = new DataPortal<OrderStatusList>();
            dp.CreateCompleted += handler;
            dp.BeginCreate();
        }

        internal static void GetByOrderIdLineNumAsync(System.Int32 orderId, System.Int32 lineNum, EventHandler<DataPortalResult<AsyncChildLoader<OrderStatusList>>> handler)
        {
            var criteria = new OrderStatusCriteria{OrderId = orderId, LineNum = lineNum};
            
            DataPortal.BeginFetch<AsyncChildLoader<OrderStatusList>>(criteria,handler);
        }

        internal static void GetByOrderIdAsync(System.Int32 orderId, EventHandler<DataPortalResult<AsyncChildLoader<OrderStatusList>>> handler)
        {
            var criteria = new OrderStatusCriteria{OrderId = orderId};
            
            DataPortal.BeginFetch<AsyncChildLoader<OrderStatusList>>(criteria,handler);
        }

        internal static void GetByCriteriaAsync(OrderStatusCriteria criteria, EventHandler<DataPortalResult<OrderStatusList>> handler)
        {  
            var dp = new DataPortal<OrderStatusList>();
            dp.FetchCompleted += handler;
            dp.BeginFetch(criteria);
        }

        internal static void GetAllAsync(EventHandler<DataPortalResult<AsyncChildLoader<OrderStatusList>>> handler)
        {
            DataPortal.BeginFetch<AsyncChildLoader<OrderStatusList>>(new OrderStatusCriteria(),handler);
        }

        #endregion

        #region Method Overrides
        
#if !SILVERLIGHT
        protected override OrderStatus AddNewCore()
        {
            OrderStatus item = PetShop.Business.OrderStatus.NewOrderStatus();

            bool cancel = false;
            OnAddNewCore(ref item, ref cancel);
            if (!cancel)
            {
                // Check to see if someone set the item to null in the OnAddNewCore.
                if(item == null)
                    item = PetShop.Business.OrderStatus.NewOrderStatus();

                // Pass the parent value down to the child.
                Order order = this.Parent as Order;
                if(order != null)
                    item.OrderId = order.OrderId;


                Add(item);
            }

            return item;
        }
#else
        protected override void AddNewCore()
        {
            PetShop.Business.OrderStatus.NewOrderStatusAsync((o, e) =>
                {
                    OrderStatus item = e.Object;

                    bool cancel = false;
                    OnAddNewCore(ref item, ref cancel);
                    if (!cancel)
                    {
                        // Check to see if someone set the item to null in the OnAddNewCore.
                        if(item == null)
                            return;
                        // Pass the parent value down to the child.
                        Order order = this.Parent as Order;
                        if(order != null)
                            item.OrderId = order.OrderId;
        
                        Add(item);
                    }
                });
        }
#endif

        protected void AddNewCoreAsync(EventHandler<DataPortalResult<OrderStatus>> handler)
        {
            PetShop.Business.OrderStatus.NewOrderStatusAsync((o, e) =>
            {
                if(e.Error == null)
                {
                    Add(e.Object);
                    handler.Invoke(this, new DataPortalResult<OrderStatus>(e.Object, null, null));
                }
            });
        }
        
        #endregion

        #region DataPortal partial methods

#if !SILVERLIGHT
        /// <summary>
        /// Codesmith generated stub method that is called when creating the child <see cref="OrderStatus"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnCreating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="OrderStatus"/> object has been created. 
        /// </summary>
        partial void OnCreated();

        /// <summary>
        /// Codesmith generated stub method that is called when fetching the child <see cref="OrderStatus"/> object. 
        /// </summary>
        /// <param name="criteria"><see cref="OrderStatusCriteria"/> object containg the criteria of the object to fetch.</param>
        /// <param name="cancel">Value returned from the method indicating whether the object fetching should proceed.</param>
        partial void OnFetching(OrderStatusCriteria criteria, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="OrderStatus"/> object has been fetched. 
        /// </summary>
        partial void OnFetched();

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="OrderStatus"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called when mapping the child <see cref="OrderStatus"/> object. 
        /// </summary>
        /// <param name="reader"></param>
        /// <param name="cancel">Value returned from the method indicating whether the object mapping should proceed.</param>
        partial void OnMapping(SafeDataReader reader, ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the child <see cref="OrderStatus"/> object has been mapped. 
        /// </summary>
        partial void OnMapped();

        /// <summary>
        /// Codesmith generated stub method that is called when updating the <see cref="OrderStatus"/> object. 
        /// </summary>
        /// <param name="cancel">Value returned from the method indicating whether the object creation should proceed.</param>
        partial void OnUpdating(ref bool cancel);

        /// <summary>
        /// Codesmith generated stub method that is called after the <see cref="OrderStatus"/> object has been updated. 
        /// </summary>
        partial void OnUpdated();
#endif
        partial void OnAddNewCore(ref OrderStatus item, ref bool cancel);

        #endregion
        #region Exists Command
#if !SILVERLIGHT

        /// <summary>
        /// Determines if a record exists in the OrderStatus in the database for the specified criteria. 
        /// </summary>
        /// <param name="criteria">The criteria parameter is a <see cref="OrderStatusList"/> object.</param>
        /// <returns>A boolean value of true is returned if a record is found.</returns>
        public static bool Exists(OrderStatusCriteria criteria)
        {
            return PetShop.Business.OrderStatus.Exists(criteria);
        }

#endif

        /// <summary>
        /// Determines if a record exists in the OrderStatus in the database for the specified criteria. 
        /// </summary>
        public static void ExistsAsync(OrderStatusCriteria criteria, EventHandler<DataPortalResult<ExistsCommand>> handler)
        {
            PetShop.Business.OrderStatus.ExistsAsync(criteria,handler);
        }

        #endregion
 
        #region Enhancements

        public OrderStatus GetOrderStatus(System.Int32 orderId, System.Int32 lineNum)
        {
            return this.FirstOrDefault(i => i.OrderId == orderId && i.LineNum == lineNum);
        }

        public bool Contains(System.Int32 orderId, System.Int32 lineNum)
        {
            return this.Count(i => i.OrderId == orderId && i.LineNum == lineNum) > 0;
        }
 
        public bool ContainsDeleted(System.Int32 orderId, System.Int32 lineNum)
        {
            return DeletedList.Count(i => i.OrderId == orderId && i.LineNum == lineNum) > 0;
        }
        
        public void Remove(System.Int32 orderId, System.Int32 lineNum)
        {
            var item = this.FirstOrDefault(i => i.OrderId == orderId && i.LineNum == lineNum);
            if (item != null)
                Remove(item);
        }

        #endregion
    }
}