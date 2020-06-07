file(GLOB SOURCES "src/*.cpp")
add_executable(adcneutron ${SOURCES})
target_link_libraries(adcneutron components external)
target_compile_features(adcneutron PRIVATE cxx_std_17)

# copy to nfs folder
if(EXISTS ${nfs_path})
    set (outfile "${CMAKE_CURRENT_BINARY_DIR}/adcneutron")
    set (destination ${nfs_path})
    add_custom_command(
        TARGET adcneutron POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different ${outfile} ${destination}
        DEPENDS ${destination}
        COMMENT "copy to nfs: ${outfile} => ${destination}"
    )
endif()

if(${ssh_copy})
    add_custom_command(TARGET adcneutron POST_BUILD
        COMMAND scp ${CMAKE_CURRENT_BINARY_DIR}/adcneutron ${ssh_user}@${ssh_host}:${ssh_target_dir}
        COMMENT "copy via ssh: scp ${CMAKE_CURRENT_BINARY_DIR}/adcneutron ${ssh_user}@${ssh_host}:${ssh_target_dir}"
    )
endif()
