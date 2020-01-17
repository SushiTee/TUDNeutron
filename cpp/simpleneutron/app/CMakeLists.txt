file(GLOB SOURCES "src/*.cpp")
add_executable(simpleneutron ${SOURCES})
target_link_libraries(simpleneutron components)
target_compile_features(simpleneutron PRIVATE cxx_std_17)

# copy to nfs folder
if(EXISTS ${nfs_path})
    set (outfile "${CMAKE_CURRENT_BINARY_DIR}/simpleneutron")
    set (destination ${nfs_path})
    add_custom_command(
        TARGET simpleneutron POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different ${outfile} ${destination}
        DEPENDS ${destination}
        COMMENT "copy to nfs: ${outfile} => ${destination}"
    )
endif()

if(${ssh_copy})
    add_custom_command(TARGET simpleneutron POST_BUILD
        COMMAND scp ${CMAKE_CURRENT_BINARY_DIR}/simpleneutron ${ssh_user}@${ssh_host}:${ssh_target_dir}
        COMMENT "copy via ssh: scp ${CMAKE_CURRENT_BINARY_DIR}/simpleneutron ${ssh_user}@${ssh_host}:${ssh_target_dir}"
    )
endif()
