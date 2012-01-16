﻿#pragma warning disable 1591
#pragma warning disable 0414        
//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------
using System;
using System.Linq;

namespace PetShop.Core.Data
{
    /// <summary>
    /// The class representing the dbo.OrderStatus table.
    /// </summary>
    [System.Data.Linq.Mapping.Table(Name="dbo.OrderStatus")]
    [System.Runtime.Serialization.DataContract(IsReference = true)]
    [System.ComponentModel.DataAnnotations.ScaffoldTable(true)]
    [System.ComponentModel.DataAnnotations.MetadataType(typeof(PetShop.Core.Data.OrderStatus.Metadata))]
    [System.Data.Services.Common.DataServiceKey("OrderId", "LineNum")]
    [System.Diagnostics.DebuggerDisplay("OrderId: {OrderId}, LineNum: {LineNum}")]
    public partial class OrderStatus
        : LinqEntityBase, ICloneable 
    {
        #region Static Constructor
        /// <summary>
        /// Initializes the <see cref="OrderStatus"/> class.
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        static OrderStatus()
        {
            AddSharedRules();
        }
        #endregion

        #region Default Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderStatus"/> class.
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCode]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public OrderStatus()
        {
            Initialize();
        }

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private void Initialize()
        {
            _order = default(System.Data.Linq.EntityRef<Order>);
            OnCreated();
        }
        #endregion

        #region Column Mapped Properties

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private int _orderId;

        /// <summary>
        /// Gets or sets the OrderId column value.
        /// </summary>
        [System.Data.Linq.Mapping.Column(Name = "OrderId", Storage = "_orderId", DbType = "int NOT NULL", IsPrimaryKey = true, CanBeNull = false)]
        [System.Runtime.Serialization.DataMember(Order = 1)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public int OrderId
        {
            get { return _orderId; }
            set
            {
                if (_orderId != value)
                {
                    if (_order.HasLoadedOrAssignedValue)
                    {
                        throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
                    }
                    OnOrderIdChanging(value);
                    SendPropertyChanging("OrderId");
                    _orderId = value;
                    SendPropertyChanged("OrderId");
                    OnOrderIdChanged();
                }
            }
        }

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private int _lineNum;

        /// <summary>
        /// Gets or sets the LineNum column value.
        /// </summary>
        [System.Data.Linq.Mapping.Column(Name = "LineNum", Storage = "_lineNum", DbType = "int NOT NULL", IsPrimaryKey = true, CanBeNull = false)]
        [System.Runtime.Serialization.DataMember(Order = 2)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public int LineNum
        {
            get { return _lineNum; }
            set
            {
                if (_lineNum != value)
                {
                    OnLineNumChanging(value);
                    SendPropertyChanging("LineNum");
                    _lineNum = value;
                    SendPropertyChanged("LineNum");
                    OnLineNumChanged();
                }
            }
        }

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private System.DateTime _timestamp;

        /// <summary>
        /// Gets or sets the Timestamp column value.
        /// </summary>
        [System.Data.Linq.Mapping.Column(Name = "Timestamp", Storage = "_timestamp", DbType = "datetime NOT NULL", CanBeNull = false)]
        [System.Runtime.Serialization.DataMember(Order = 3)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public System.DateTime Timestamp
        {
            get { return _timestamp; }
            set
            {
                if (_timestamp != value)
                {
                    OnTimestampChanging(value);
                    SendPropertyChanging("Timestamp");
                    _timestamp = value;
                    SendPropertyChanged("Timestamp");
                    OnTimestampChanged();
                }
            }
        }

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private string _status;

        /// <summary>
        /// Gets or sets the Status column value.
        /// </summary>
        [System.Data.Linq.Mapping.Column(Name = "Status", Storage = "_status", DbType = "varchar(2) NOT NULL", CanBeNull = false)]
        [System.ComponentModel.DataAnnotations.StringLength(2)]
        [System.Runtime.Serialization.DataMember(Order = 4)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public string Status
        {
            get { return _status; }
            set
            {
                if (_status != value)
                {
                    OnStatusChanging(value);
                    SendPropertyChanging("Status");
                    _status = value;
                    SendPropertyChanged("Status");
                    OnStatusChanged();
                }
            }
        }
        #endregion

        #region Association Mapped Properties

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private System.Data.Linq.EntityRef<Order> _order;

        /// <summary>
        /// Gets or sets the <see cref="Order"/> association.
        /// </summary>
        [System.Data.Linq.Mapping.Association(Name = "Order_OrderStatus", Storage = "_order", ThisKey = "OrderId", OtherKey = "OrderId", IsForeignKey = true)]
        [System.Runtime.Serialization.DataMember(Order = 5, EmitDefaultValue = false)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public Order Order
        {
            get { return (serializing && !_order.HasLoadedOrAssignedValue) ? null : _order.Entity; }
            set
            {
                Order previousValue = _order.Entity;
                if (previousValue != value || _order.HasLoadedOrAssignedValue == false)
                {
                    OnOrderChanging(value);
                    SendPropertyChanging("Order");
                    if (previousValue != null)
                    {
                        _order.Entity = null;
                        previousValue.OrderStatusList.Remove(this);
                    }
                    _order.Entity = value;
                    if (value != null)
                    {
                        value.OrderStatusList.Add(this);
                        _orderId = value.OrderId;
                    }
                    else
                    {
                        _orderId = default(int);
                    }
                    SendPropertyChanged("Order");
                    OnOrderChanged();
                }
            }
        }
        
        
        
        #endregion

        #region Extensibility Method Definitions
        /// <summary>Called by the static constructor to add shared rules.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        static partial void AddSharedRules();
        /// <summary>Called when this instance is loaded.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnLoaded();
        /// <summary>Called when this instance is being saved.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnValidate(System.Data.Linq.ChangeAction action);
        /// <summary>Called when this instance is created.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnCreated();
        /// <summary>Called when <see cref="OrderId"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnOrderIdChanging(int value);
        /// <summary>Called after <see cref="OrderId"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnOrderIdChanged();
        /// <summary>Called when <see cref="LineNum"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnLineNumChanging(int value);
        /// <summary>Called after <see cref="LineNum"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnLineNumChanged();
        /// <summary>Called when <see cref="Timestamp"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnTimestampChanging(System.DateTime value);
        /// <summary>Called after <see cref="Timestamp"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnTimestampChanged();
        /// <summary>Called when <see cref="Status"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnStatusChanging(string value);
        /// <summary>Called after <see cref="Status"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnStatusChanged();
        /// <summary>Called when <see cref="Order"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnOrderChanging(Order value);
        /// <summary>Called after <see cref="Order"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnOrderChanged();

        #endregion

        #region Serialization
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private bool serializing;

        /// <summary>
        /// Called when serializing.
        /// </summary>
        /// <param name="context">The <see cref="System.Runtime.Serialization.StreamingContext"/> for the serialization.</param>
        [System.Runtime.Serialization.OnSerializing]
        [System.ComponentModel.EditorBrowsable(System.ComponentModel.EditorBrowsableState.Never)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public void OnSerializing(System.Runtime.Serialization.StreamingContext context) {
            serializing = true;
        }

        /// <summary>
        /// Called when serialized.
        /// </summary>
        /// <param name="context">The <see cref="System.Runtime.Serialization.StreamingContext"/> for the serialization.</param>
        [System.Runtime.Serialization.OnSerialized]
        [System.ComponentModel.EditorBrowsable(System.ComponentModel.EditorBrowsableState.Never)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public void OnSerialized(System.Runtime.Serialization.StreamingContext context) {
            serializing = false;
        }

        /// <summary>
        /// Called when deserializing.
        /// </summary>
        /// <param name="context">The <see cref="System.Runtime.Serialization.StreamingContext"/> for the serialization.</param>
        [System.Runtime.Serialization.OnDeserializing]
        [System.ComponentModel.EditorBrowsable(System.ComponentModel.EditorBrowsableState.Never)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public void OnDeserializing(System.Runtime.Serialization.StreamingContext context) {
            Initialize();
        }

        /// <summary>
        /// Deserializes an instance of <see cref="OrderStatus"/> from XML.
        /// </summary>
        /// <param name="xml">The XML string representing a <see cref="OrderStatus"/> instance.</param>
        /// <returns>An instance of <see cref="OrderStatus"/> that is deserialized from the XML string.</returns>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public static OrderStatus FromXml(string xml)
        {
            var deserializer = new System.Runtime.Serialization.DataContractSerializer(typeof(OrderStatus));

            using (var sr = new System.IO.StringReader(xml))
            using (var reader = System.Xml.XmlReader.Create(sr))
            {
                return deserializer.ReadObject(reader) as OrderStatus;
            }
        }

        /// <summary>
        /// Deserializes an instance of <see cref="OrderStatus"/> from a byte array.
        /// </summary>
        /// <param name="buffer">The byte array representing a <see cref="OrderStatus"/> instance.</param>
        /// <returns>An instance of <see cref="OrderStatus"/> that is deserialized from the byte array.</returns>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public static OrderStatus FromBinary(byte[] buffer)
        {
            var deserializer = new System.Runtime.Serialization.DataContractSerializer(typeof(OrderStatus));

            using (var ms = new System.IO.MemoryStream(buffer))
            using (var reader = System.Xml.XmlDictionaryReader.CreateBinaryReader(ms, System.Xml.XmlDictionaryReaderQuotas.Max))
            {
                return deserializer.ReadObject(reader) as OrderStatus;
            }
        }
        
        #endregion

        #region Clone
        /// <summary>
        /// Creates a new object that is a copy of the current instance.
        /// </summary>
        /// <returns>
        /// A new object that is a copy of this instance.
        /// </returns>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        object ICloneable.Clone()
        {
            var serializer = new System.Runtime.Serialization.DataContractSerializer(GetType());
            using (var ms = new System.IO.MemoryStream())
            {
                serializer.WriteObject(ms, this);
                ms.Position = 0;
                return serializer.ReadObject(ms);
            }
        }

        /// <summary>
        /// Creates a new object that is a copy of the current instance.
        /// </summary>
        /// <returns>
        /// A new object that is a copy of this instance.
        /// </returns>
        /// <remarks>
        /// Only loaded <see cref="T:System.Data.Linq.EntityRef`1"/> and <see cref="T:System.Data.Linq.EntitySet`1" /> child accessions will be cloned.
        /// </remarks>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public OrderStatus Clone()
        {
            return (OrderStatus)((ICloneable)this).Clone();
        }
        #endregion

        #region Detach Methods
        /// <summary>
        /// Detach this instance from the <see cref="System.Data.Linq.DataContext"/>.
        /// </summary>
        /// <remarks>
        /// Detaching the entity will stop all lazy loading and allow it to be added to another <see cref="System.Data.Linq.DataContext"/>.
        /// </remarks>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public override void Detach()
        {
            if (!IsAttached())
                return;

            base.Detach();
            _order = Detach(_order);
        }
        #endregion
    }
}
#pragma warning restore 1591
#pragma warning restore 0414

