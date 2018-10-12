#!/bin/sh

# step 1 run validate
yaml-lint 01-type.yaml 02-type-cast.yaml 03-array.yaml 04-long-string.yaml 05-formated-string.yaml 06-avoid-duplicate-value.yaml 07-avoid-duplicate-structure.yaml 08-unknown-alias.yaml 09-syntax-error.yaml
