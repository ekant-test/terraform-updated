# Owner   : cloudops
# Created : 05/21/2020
# Purpose : Sample resource to create O & OU
#
provider "aws" {
  region = var.m_region
}


# --- organisation Units----------------------------------------------------------

resource "aws_organizations_organizational_unit" "va-holdings" {
  name      = var.m_ou_va_holding
  parent_id = var.o_root_id
  depends_on = [var.o_root_id]
}

resource "aws_organizations_organizational_unit" "pci-master" {
  name      = var.m_ou_pci_master
  parent_id = var.o_root_id
  depends_on = [var.o_root_id]
}


# --- Sub organisation Units----------------------------------------------------------


resource "aws_organizations_organizational_unit" "security" {
  name      = var.m_ou_security
  parent_id = aws_organizations_organizational_unit.va-holdings.id
  depends_on = [var.o_root_id]
}

resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = var.m_ou_infrastructure
  parent_id = aws_organizations_organizational_unit.va-holdings.id
  depends_on = [var.o_root_id]
}

resource "aws_organizations_organizational_unit" "pci-workloads" {
  name      = var.m_ou_pci_workloads
  parent_id = aws_organizations_organizational_unit.va-holdings.id
  depends_on = [var.o_root_id]
}
