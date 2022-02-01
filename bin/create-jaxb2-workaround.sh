#!/bin/bash
echo ---------------------------------------------
echo Creating symlinks for jaxb2-maven-plugin issue
echo see: https://github.com/mojohaus/jaxb2-maven-plugin/issues/115
echo ---------------------------------------------
echo

function createLink {
    bad_dir=${CEDAR_SOURCE}/cedar-parent/cedar-project${CEDAR_SOURCE}/cedar-parent/cedar-cadsr-tools/src/main/resources/xsd/$1
    file=${CEDAR_SOURCE}/cedar-parent/cedar-cadsr-tools/src/main/resources/xsd/$1/$2
    mkdir --parents ${bad_dir}
    ln -s ${file} ${bad_dir}
}

createLink category ContextCsCsi_0923_modified.xsd

createLink cde DataElement_V5.3.4_modified.xsd

createLink form FormLoaderv17_modified.xsd


