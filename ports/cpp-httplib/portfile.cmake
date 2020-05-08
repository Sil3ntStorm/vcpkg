vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO yhirose/cpp-httplib
    REF v0.5.12
    SHA512 62dc378e87981dd8ed8aef6cde12da190d714d1234379b073a4df189ff589604800c9add619f6adc98a3bc7856c01b390cd336723007a78e29d2df681680fceb
    HEAD_REF master
)

file(
    COPY ${SOURCE_PATH}/httplib.h
    DESTINATION ${CURRENT_PACKAGES_DIR}/include
)

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/cpp-httplib RENAME copyright)
