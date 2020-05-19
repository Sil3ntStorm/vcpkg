vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO yhirose/cpp-httplib
    REF v0.6.3
    SHA512 ae2bf37d72d26ba2f80c1d93592e40e931becc68ec3f257b6b811771f097f09ae5da2bf930c5067b06bd3e2886a33a8a004bfff7bf53240eca687bfcaa1d0c7f
    HEAD_REF master
)

file(
    COPY ${SOURCE_PATH}/httplib.h
    DESTINATION ${CURRENT_PACKAGES_DIR}/include
)

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/cpp-httplib RENAME copyright)
