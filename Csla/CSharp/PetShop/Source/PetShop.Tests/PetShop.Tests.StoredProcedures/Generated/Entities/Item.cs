﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated using CodeSmith: v6.0.2, CSLA Templates: v3.0.3.2396, CSLA Framework: v4.0.0.
//       Changes to this template will not be lost.
//
//     Template: SwitchableObject.cst
//     Template website: http://code.google.com/p/codesmith/
// </autogenerated>
//------------------------------------------------------------------------------
#region Using declarations

using System;

using Csla;
using Csla.Security;
using Csla.Rules;

#endregion

namespace PetShop.Tests.StoredProcedures
{
    /// <summary>
    /// The Item class is a CSLA switchable object class.  See CSLA documentation for a more detailed description.
    /// </summary>
    public partial class Item
    {
        #region Business Rules

        /// <summary>
        /// All custom rules need to be placed in this method.
        /// </summary>
        /// <returns>Return true to override the generated rules; If false generated rules will be run.</returns>
        protected bool AddBusinessValidationRules()
        {
            // TODO: add validation rules
            //ValidationRules.AddRule(RuleMethod, "");

            return false;
        }

        #endregion

        #region Authorization Rules

        /// <summary>
        /// Allows the specification of CSLA based authorization rules.  Specifies what roles can 
        /// perform which operations for a given business object
        /// </summary>
        protected static void AddObjectAuthorizationRules()
        {
            //Csla.Rules.BusinessRules.AddRule(typeof(Item), new Csla.Rules.CommonRules.IsInRole(Csla.Rules.AuthorizationActions.CreateObject, "SomeRole"));
            //Csla.Rules.BusinessRules.AddRule(typeof(Item), new Csla.Rules.CommonRules.IsInRole(Csla.Rules.AuthorizationActions.EditObject, "SomeRole"));
            //Csla.Rules.BusinessRules.AddRule(typeof(Item), new Csla.Rules.CommonRules.IsInRole(Csla.Rules.AuthorizationActions.DeleteObject, "SomeRole", "SomeAdminRole"));
        }
        #endregion
    }
}