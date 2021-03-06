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

namespace Tracker.Core.Data
{
    /// <summary>
    /// The class representing the dbo.UserRole table.
    /// </summary>
    [System.Data.Linq.Mapping.Table(Name="dbo.UserRole")]
    [System.Runtime.Serialization.DataContract(IsReference = true)]
    [System.ComponentModel.DataAnnotations.ScaffoldTable(true)]
    [System.ComponentModel.DataAnnotations.MetadataType(typeof(Tracker.Core.Data.UserRole.Metadata))]
    [System.Data.Services.Common.DataServiceKey("UserId", "RoleId")]
    [System.Diagnostics.DebuggerDisplay("UserId: {UserId}, RoleId: {RoleId}")]
    public partial class UserRole
        : LinqEntityBase, ICloneable, Tracker.Core.Data.Interfaces.IUserRole  
    {
        #region Static Constructor
        /// <summary>
        /// Initializes the <see cref="UserRole"/> class.
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        static UserRole()
        {
            AddSharedRules();
        }
        #endregion

        #region Default Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="UserRole"/> class.
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCode]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public UserRole()
        {
            Initialize();
        }

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private void Initialize()
        {
            _role = default(System.Data.Linq.EntityRef<Role>);
            _user = default(System.Data.Linq.EntityRef<User>);
            OnCreated();
        }
        #endregion

        #region Column Mapped Properties

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private int _userId;

        /// <summary>
        /// Gets or sets the UserId column value.
        /// </summary>
        [System.Data.Linq.Mapping.Column(Name = "UserId", Storage = "_userId", DbType = "int NOT NULL", IsPrimaryKey = true, CanBeNull = false)]
        [System.Runtime.Serialization.DataMember(Order = 1)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public int UserId
        {
            get { return _userId; }
            set
            {
                if (_userId != value)
                {
                    if (_user.HasLoadedOrAssignedValue)
                    {
                        throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
                    }
                    OnUserIdChanging(value);
                    SendPropertyChanging("UserId");
                    _userId = value;
                    SendPropertyChanged("UserId");
                    OnUserIdChanged();
                }
            }
        }

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private int _roleId;

        /// <summary>
        /// Gets or sets the RoleId column value.
        /// </summary>
        [System.Data.Linq.Mapping.Column(Name = "RoleId", Storage = "_roleId", DbType = "int NOT NULL", IsPrimaryKey = true, CanBeNull = false)]
        [System.Runtime.Serialization.DataMember(Order = 2)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public int RoleId
        {
            get { return _roleId; }
            set
            {
                if (_roleId != value)
                {
                    if (_role.HasLoadedOrAssignedValue)
                    {
                        throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
                    }
                    OnRoleIdChanging(value);
                    SendPropertyChanging("RoleId");
                    _roleId = value;
                    SendPropertyChanged("RoleId");
                    OnRoleIdChanged();
                }
            }
        }
        #endregion

        #region Association Mapped Properties

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private System.Data.Linq.EntityRef<Role> _role;

        /// <summary>
        /// Gets or sets the <see cref="Role"/> association.
        /// </summary>
        [System.Data.Linq.Mapping.Association(Name = "Role_UserRole", Storage = "_role", ThisKey = "RoleId", OtherKey = "Id", IsForeignKey = true, DeleteOnNull = true)]
        [System.Runtime.Serialization.DataMember(Order = 3, EmitDefaultValue = false)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public Role Role
        {
            get { return (serializing && !_role.HasLoadedOrAssignedValue) ? null : _role.Entity; }
            set
            {
                Role previousValue = _role.Entity;
                if (previousValue != value || _role.HasLoadedOrAssignedValue == false)
                {
                    OnRoleChanging(value);
                    SendPropertyChanging("Role");
                    if (previousValue != null)
                    {
                        _role.Entity = null;
                        previousValue.UserRoleList.Remove(this);
                    }
                    _role.Entity = value;
                    if (value != null)
                    {
                        value.UserRoleList.Add(this);
                        _roleId = value.Id;
                    }
                    else
                    {
                        _roleId = default(int);
                    }
                    SendPropertyChanged("Role");
                    OnRoleChanged();
                }
            }
        }
        
        Tracker.Core.Data.Interfaces.IRole Tracker.Core.Data.Interfaces.IUserRole.Role
        {
            get { return this.Role; }
            set { this.Role = value as Tracker.Core.Data.Role; }
        }
        
        

        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        private System.Data.Linq.EntityRef<User> _user;

        /// <summary>
        /// Gets or sets the <see cref="User"/> association.
        /// </summary>
        [System.Data.Linq.Mapping.Association(Name = "User_UserRole", Storage = "_user", ThisKey = "UserId", OtherKey = "Id", IsForeignKey = true, DeleteOnNull = true)]
        [System.Runtime.Serialization.DataMember(Order = 4, EmitDefaultValue = false)]
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public User User
        {
            get { return (serializing && !_user.HasLoadedOrAssignedValue) ? null : _user.Entity; }
            set
            {
                User previousValue = _user.Entity;
                if (previousValue != value || _user.HasLoadedOrAssignedValue == false)
                {
                    OnUserChanging(value);
                    SendPropertyChanging("User");
                    if (previousValue != null)
                    {
                        _user.Entity = null;
                        previousValue.UserRoleList.Remove(this);
                    }
                    _user.Entity = value;
                    if (value != null)
                    {
                        value.UserRoleList.Add(this);
                        _userId = value.Id;
                    }
                    else
                    {
                        _userId = default(int);
                    }
                    SendPropertyChanged("User");
                    OnUserChanged();
                }
            }
        }
        
        Tracker.Core.Data.Interfaces.IUser Tracker.Core.Data.Interfaces.IUserRole.User
        {
            get { return this.User; }
            set { this.User = value as Tracker.Core.Data.User; }
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
        /// <summary>Called when <see cref="UserId"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnUserIdChanging(int value);
        /// <summary>Called after <see cref="UserId"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnUserIdChanged();
        /// <summary>Called when <see cref="RoleId"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnRoleIdChanging(int value);
        /// <summary>Called after <see cref="RoleId"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnRoleIdChanged();
        /// <summary>Called when <see cref="Role"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnRoleChanging(Role value);
        /// <summary>Called after <see cref="Role"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnRoleChanged();
        /// <summary>Called when <see cref="User"/> is changing.</summary>
        /// <param name="value">The new value.</param>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnUserChanging(User value);
        /// <summary>Called after <see cref="User"/> has Changed.</summary>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        partial void OnUserChanged();

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
        /// Deserializes an instance of <see cref="UserRole"/> from XML.
        /// </summary>
        /// <param name="xml">The XML string representing a <see cref="UserRole"/> instance.</param>
        /// <returns>An instance of <see cref="UserRole"/> that is deserialized from the XML string.</returns>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public static UserRole FromXml(string xml)
        {
            var deserializer = new System.Runtime.Serialization.DataContractSerializer(typeof(UserRole));

            using (var sr = new System.IO.StringReader(xml))
            using (var reader = System.Xml.XmlReader.Create(sr))
            {
                return deserializer.ReadObject(reader) as UserRole;
            }
        }

        /// <summary>
        /// Deserializes an instance of <see cref="UserRole"/> from a byte array.
        /// </summary>
        /// <param name="buffer">The byte array representing a <see cref="UserRole"/> instance.</param>
        /// <returns>An instance of <see cref="UserRole"/> that is deserialized from the byte array.</returns>
        [System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")]
        public static UserRole FromBinary(byte[] buffer)
        {
            var deserializer = new System.Runtime.Serialization.DataContractSerializer(typeof(UserRole));

            using (var ms = new System.IO.MemoryStream(buffer))
            using (var reader = System.Xml.XmlDictionaryReader.CreateBinaryReader(ms, System.Xml.XmlDictionaryReaderQuotas.Max))
            {
                return deserializer.ReadObject(reader) as UserRole;
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
        public UserRole Clone()
        {
            return (UserRole)((ICloneable)this).Clone();
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
            _role = Detach(_role);
            _user = Detach(_user);
        }
        #endregion
    }
}
#pragma warning restore 1591
#pragma warning restore 0414

