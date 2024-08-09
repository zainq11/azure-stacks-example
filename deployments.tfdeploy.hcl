# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "production" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    client_id       = "c22094b1-047d-4221-bc61-82907b50f338"
    subscription_id = "1845c88e-c6c2-4dfb-94e1-552aeecb228e"
    tenant_id       = "8e688f32-c820-4e21-97c7-49b5adee5220"
  }
}
