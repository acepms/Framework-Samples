﻿'------------------------------------------------------------------------------
' <autogenerated>
'     This code was generated by a CodeSmith Template.
'
'     DO NOT MODIFY contents of this file. Changes to this
'     file will be lost if the code is regenerated.
' </autogenerated>
'------------------------------------------------------------------------------
Imports System
Imports System.Linq

Namespace Tracker.Core.Data
    ''' <summary>
    ''' The class representing the dbo.Guid table.
    ''' </summary>
    <System.Data.Linq.Mapping.Table(Name:="dbo.Guid")> _
    <System.Runtime.Serialization.DataContract(IsReference:=True)> _
    <System.ComponentModel.DataAnnotations.ScaffoldTable(True)> _
    <System.ComponentModel.DataAnnotations.MetadataType(GetType(Tracker.Core.Data.Guid.Metadata))> _
    <System.Data.Services.Common.DataServiceKey("Id")> _
    <System.Diagnostics.DebuggerDisplay("Id: {Id}")> _
    Partial public Class Guid
        Inherits LinqEntityBase
        Implements ICloneable

#Region "Static Constructor"
        ''' <summary>
        ''' Initializes the <see cref="Guid"/> class.
        ''' </summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Shared Sub New()
            AddSharedRules()
        End Sub
#End Region

#Region "Default Constructor"
        ''' <summary>
        ''' Initializes a new instance of the <see cref="Guid"/> class.
        ''' </summary>
        <System.Diagnostics.DebuggerNonUserCode()> _
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Sub New()
            Initialize()
        End Sub

        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Private Sub Initialize()
            OnCreated()
        End Sub
#End Region

#Region "Column Mapped Properties"

        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Private _id As System.Guid

        ''' <summary>
        ''' Gets or sets the Id column value.
        ''' </summary>
        <System.Data.Linq.Mapping.Column(Name:="Id", Storage:="_id", DbType:="uniqueidentifier NOT NULL", IsPrimaryKey:=True, CanBeNull:=False)> _
        <System.Runtime.Serialization.DataMember(Order:=1)> _
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Property Id() As System.Guid
            Get
                Return _id
            End Get
            Set(ByVal value As System.Guid)
                If ((Me._id = value) = False) Then
                    OnIdChanging(value)
                    SendPropertyChanging("Id")
                    _id = value
                    SendPropertyChanged("Id")
                    OnIdChanged()
                End If
            End Set
        End Property

        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Private _alternateId As Nullable(Of System.Guid)

        ''' <summary>
        ''' Gets or sets the AlternateId column value.
        ''' </summary>
        <System.Data.Linq.Mapping.Column(Name:="AlternateId", Storage:="_alternateId", DbType:="uniqueidentifier")> _
        <System.Runtime.Serialization.DataMember(Order:=2)> _
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Property AlternateId() As Nullable(Of System.Guid)
            Get
                Return _alternateId
            End Get
            Set(ByVal value As Nullable(Of System.Guid))
                If (Me._alternateId.Equals(value) = False) Then
                    OnAlternateIdChanging(value)
                    SendPropertyChanging("AlternateId")
                    _alternateId = value
                    SendPropertyChanged("AlternateId")
                    OnAlternateIdChanged()
                End If
            End Set
        End Property
#End Region

#Region "Association Mapped Properties"

#End Region

#Region "Extensibility Method Definitions"

        ''' <summary>Called by the Shared constructor to add shared rules.</summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Shared Sub AddSharedRules()
        End Sub
        ''' <summary>Called when this instance is loaded.</summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnLoaded()
        End Sub
        ''' <summary>Called when this instance is being saved.</summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnValidate(ByVal action As System.Data.Linq.ChangeAction)
        End Sub
        ''' <summary>Called when this instance is created.</summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnCreated()
        End Sub
        ''' <summary>Called when <see cref="Id"/> is changing.</summary>
        ''' <param name="value">The new value.</param>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnIdChanging(ByVal value As System.Guid)
        End Sub
        ''' <summary>Called after <see cref="Id"/> has Changed.</summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnIdChanged()
        End Sub
        ''' <summary>Called when <see cref="AlternateId"/> is changing.</summary>
        ''' <param name="value">The new value.</param>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnAlternateIdChanging(ByVal value As Nullable(Of System.Guid))
        End Sub
        ''' <summary>Called after <see cref="AlternateId"/> has Changed.</summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Partial Private Sub OnAlternateIdChanged()
        End Sub

#End Region

#Region "Serialization"

        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Private serializing As Boolean

        ''' <summary>
        ''' Called when serializing.
        ''' </summary>
        ''' <param name="context">The <see cref="System.Runtime.Serialization.StreamingContext"/> for the serialization.</param>
        <System.Runtime.Serialization.OnSerializing(), _
         System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)> _
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Sub OnSerializing(ByVal context As System.Runtime.Serialization.StreamingContext)
            serializing = True
        End Sub

        ''' <summary>
        ''' Called when serialized.
        ''' </summary>
        ''' <param name="context">The <see cref="System.Runtime.Serialization.StreamingContext"/> for the serialization.</param>
        <System.Runtime.Serialization.OnSerialized(), _
         System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)> _
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Sub OnSerialized(ByVal context As System.Runtime.Serialization.StreamingContext)
            serializing = False
        End Sub

        ''' <summary>
        ''' Called when deserializing.
        ''' </summary>
        ''' <param name="context">The <see cref="System.Runtime.Serialization.StreamingContext"/> for the serialization.</param>
        <System.Runtime.Serialization.OnDeserializing(), _
         System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)> _
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Sub OnDeserializing(ByVal context As System.Runtime.Serialization.StreamingContext)
            Initialize()
        End Sub

        ''' <summary>
        ''' Deserializes an instance of <see cref="Guid"/> from XML.
        ''' </summary>
        ''' <param name="xml">The XML string representing a <see cref="Guid"/> instance.</param>
        ''' <returns>An instance of <see cref="Guid"/> that is deserialized from the XML string.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Shared Function FromXml(ByVal xml As String) As Guid
            Dim deserializer = New System.Runtime.Serialization.DataContractSerializer(GetType(Guid))

            Using sr = New System.IO.StringReader(xml)
                Using reader = System.Xml.XmlReader.Create(sr)
                    Return TryCast(deserializer.ReadObject(reader), Guid)
                End Using
            End Using
        End Function

        ''' <summary>
        ''' Deserializes an instance of <see cref="Guid"/>.
        ''' </summary>
        ''' <param name="buffer">The byte array representing a <see cref="Guid"/> instance.</param>
        ''' <returns>An instance of <see cref="Guid"/> that is deserialized from the byte array.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Shared Function FromBinary(ByVal buffer As Byte()) As Guid
            Dim deserializer = New System.Runtime.Serialization.DataContractSerializer(GetType(Guid))

            Using ms = New System.IO.MemoryStream(buffer)
                Using reader = System.Xml.XmlDictionaryReader.CreateBinaryReader(ms, System.Xml.XmlDictionaryReaderQuotas.Max)
                    Return TryCast(deserializer.ReadObject(reader), Guid)
                End Using
            End Using
        End Function
#End Region

#Region "Clone"
        ''' <summary>
        ''' Creates a new object that is a copy of the current instance.
        ''' </summary>
        ''' <returns>
        ''' A new object that is a copy of this instance.
        ''' </returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Private Function ICloneable_Clone() As Object Implements ICloneable.Clone
            Dim serializer As New System.Runtime.Serialization.DataContractSerializer([GetType]())
            Using ms As New System.IO.MemoryStream()
                serializer.WriteObject(ms, Me)
                ms.Position = 0
                Return serializer.ReadObject(ms)
            End Using
        End Function

        ''' <summary>
        ''' Creates a new object that is a copy of the current instance.
        ''' </summary>
        ''' <returns>
        ''' A new object that is a copy of this instance.
        ''' </returns>
        ''' <remarks>
        ''' Only loaded <see cref="T:System.Data.Linq.EntityRef`1"/> and <see cref="T:System.Data.Linq.EntitySet`1" /> child accessions will be cloned.
        ''' </remarks>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Function Clone() As Guid
            Return DirectCast(DirectCast(Me, ICloneable).Clone(), Guid)
        End Function
#End Region

#Region "Detach Methods"
        ''' <summary>
        ''' Detach this instance from the <see cref="System.Data.Linq.DataContext"/>.
        ''' </summary>
        ''' <remarks>
        ''' Detaching the entity will stop all lazy loading and allow it to be added to another <see cref="System.Data.Linq.DataContext"/>.
        ''' </remarks>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        Public Overrides Sub Detach()

            If (Not IsAttached()) Then
                Return
            End If

            MyBase.Detach()
        End Sub
#End Region
    End Class
End Namespace
