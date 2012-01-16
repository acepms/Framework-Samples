﻿'------------------------------------------------------------------------------
' <autogenerated>
'     This code was generated by a CodeSmith Template.
'
'     DO NOT MODIFY contents of this file. Changes to this
'     file will be lost if the code is regenerated.
' </autogenerated>
'------------------------------------------------------------------------------

Imports System
Imports System.Collections.Generic
Imports System.Data.Linq
Imports System.Linq
Imports CodeSmith.Data.Linq
Imports CodeSmith.Data.Linq.Dynamic

Namespace Tracker.Core.Data
    ''' <summary>
    ''' The query extension class for UserRole.
    ''' </summary>
    Public Module UserRoleExtensions
        ''' <summary>
        ''' Gets an instance by the primary key.
        ''' </summary>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        <System.Runtime.CompilerServices.Extension()> _
        Public Function GetByKey(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal userId As Integer, ByVal roleId As Integer) As Tracker.Core.Data.UserRole

            Dim entity As System.Data.Linq.Table(Of Tracker.Core.Data.UserRole) = CType(queryable, Table(Of Tracker.Core.Data.UserRole))
            If (entity IsNot Nothing AndAlso entity.Context.LoadOptions Is Nothing) Then
                Return Query.GetByKey.Invoke(DirectCast(entity.Context, Tracker.Core.Data.TrackerDataContext), userId, roleId)
            End If

            Return queryable.FirstOrDefault(Function(u)u.UserId = userId _
					AndAlso u.RoleId = roleId)
        End Function

        ''' <summary>
        ''' Immediately deletes the entity by the primary key from the underlying data source with a single delete command.
        ''' </summary>
        ''' <param name="table">Represents a table for a particular type in the underlying database containing rows are to be deleted.</param>
        ''' <returns>The number of rows deleted from the database.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        <System.Runtime.CompilerServices.Extension()> _
        Public Function Delete(ByVal table As System.Data.Linq.Table(Of Tracker.Core.Data.UserRole), ByVal userId As Integer, ByVal roleId As Integer) As Integer
            Return table.Delete(Function(u)u.UserId = userId _
					AndAlso u.RoleId = roleId)
        End Function

        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="userId">UserId to search for.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        <System.Runtime.CompilerServices.Extension()> _
        Public Function ByUserId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal userId As Integer) As IQueryable(Of Tracker.Core.Data.UserRole)
            Return queryable.Where(Function(u)u.UserId = userId)
        End Function


        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="userId">UserId to search for.</param>
        ''' <param name="comparison">The comparison operator.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
	<System.Runtime.CompilerServices.Extension()> _
        Public Function ByUserId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal comparison As ComparisonOperator, ByVal userId As Integer) As IQueryable(Of Tracker.Core.Data.UserRole)
            Select Case comparison
                Case ComparisonOperator.GreaterThan
                    Return queryable.Where(Function(u) u.UserId > userId)
                Case ComparisonOperator.GreaterThanOrEquals
                    Return queryable.Where(Function(u) u.UserId >= userId)
                Case ComparisonOperator.LessThan
                    Return queryable.Where(Function(u) u.UserId < userId)
                Case ComparisonOperator.LessThanOrEquals
                    Return queryable.Where(Function(u) u.UserId <= userId)
                Case ComparisonOperator.NotEquals
                    Return queryable.Where(Function(u) u.UserId <> userId)
                Case Else
                    Return queryable.Where(Function(u) u.UserId = userId)
            End Select
        End Function
        
        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="userId">UserId to search for.</param>
        ''' <param name="additionalValues">Additional values to search for.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
	<System.Runtime.CompilerServices.Extension()> _
        Public Function ByUserId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal userId As Integer, ByVal ParamArray additionalValues As Integer()) As IQueryable(Of Tracker.Core.Data.UserRole)
            Dim values = New List(Of Integer)()
            values.Add(userId)

            If additionalValues IsNot Nothing Then
                values.AddRange(additionalValues)
            End If

            If values.Count = 1 Then
                Return queryable.ByUserId(values(0))
            End If

            Return queryable.ByUserId(values)
        End Function

        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="values">The values to search for.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
	<System.Runtime.CompilerServices.Extension()> _
        Public Function ByUserId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal values As IEnumerable(Of Integer)) As IQueryable(Of Tracker.Core.Data.UserRole)
                Return queryable.Where(Function(u) values.Contains(u.UserId))
        End Function


        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="roleId">RoleId to search for.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
        <System.Runtime.CompilerServices.Extension()> _
        Public Function ByRoleId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal roleId As Integer) As IQueryable(Of Tracker.Core.Data.UserRole)
            Return queryable.Where(Function(u)u.RoleId = roleId)
        End Function


        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="roleId">RoleId to search for.</param>
        ''' <param name="comparison">The comparison operator.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
	<System.Runtime.CompilerServices.Extension()> _
        Public Function ByRoleId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal comparison As ComparisonOperator, ByVal roleId As Integer) As IQueryable(Of Tracker.Core.Data.UserRole)
            Select Case comparison
                Case ComparisonOperator.GreaterThan
                    Return queryable.Where(Function(u) u.RoleId > roleId)
                Case ComparisonOperator.GreaterThanOrEquals
                    Return queryable.Where(Function(u) u.RoleId >= roleId)
                Case ComparisonOperator.LessThan
                    Return queryable.Where(Function(u) u.RoleId < roleId)
                Case ComparisonOperator.LessThanOrEquals
                    Return queryable.Where(Function(u) u.RoleId <= roleId)
                Case ComparisonOperator.NotEquals
                    Return queryable.Where(Function(u) u.RoleId <> roleId)
                Case Else
                    Return queryable.Where(Function(u) u.RoleId = roleId)
            End Select
        End Function
        
        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="roleId">RoleId to search for.</param>
        ''' <param name="additionalValues">Additional values to search for.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
	<System.Runtime.CompilerServices.Extension()> _
        Public Function ByRoleId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal roleId As Integer, ByVal ParamArray additionalValues As Integer()) As IQueryable(Of Tracker.Core.Data.UserRole)
            Dim values = New List(Of Integer)()
            values.Add(roleId)

            If additionalValues IsNot Nothing Then
                values.AddRange(additionalValues)
            End If

            If values.Count = 1 Then
                Return queryable.ByRoleId(values(0))
            End If

            Return queryable.ByRoleId(values)
        End Function

        ''' <summary>
        ''' Gets a query for <see cref="Tracker.Core.Data.UserRole"/>.
        ''' </summary>
        ''' <param name="queryable">Query to append where clause.</param>
        ''' <param name="values">The values to search for.</param>
        ''' <returns>IQueryable with additional where clause.</returns>
        <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
	<System.Runtime.CompilerServices.Extension()> _
        Public Function ByRoleId(ByVal queryable As IQueryable(Of Tracker.Core.Data.UserRole), ByVal values As IEnumerable(Of Integer)) As IQueryable(Of Tracker.Core.Data.UserRole)
                Return queryable.Where(Function(u) values.Contains(u.RoleId))
        End Function


        'Insert User Defined Extensions here.
        'Anything outside of this Region will be lost at regeneration
        #Region "User Extensions"


        #End Region

        #Region "Query"
        ''' <summary>
        ''' A private class for lazy loading static compiled queries.
        ''' </summary>
        Private Partial Class Query


            <System.CodeDom.Compiler.GeneratedCode("CodeSmith", "6.0.0.0")> _
            Friend Shared ReadOnly GetByKey As Func(Of Tracker.Core.Data.TrackerDataContext, Integer, Integer, Tracker.Core.Data.UserRole) = _
                CompiledQuery.Compile( _
                    Function(db As Tracker.Core.Data.TrackerDataContext , ByVal userId As Integer, ByVal roleId As Integer) _
                        db.UserRole.FirstOrDefault(Function(u)u.UserId = userId _
							AndAlso u.RoleId = roleId))

            ' Add your compiled queries here.
            'Anything outside of this Region will be lost at regeneration
            #Region "User Queries"

            #End Region

        End Class
        #End Region
    End Module
End Namespace

