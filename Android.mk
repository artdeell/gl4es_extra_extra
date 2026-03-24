LOCAL_PATH := $(call my-dir)

###########################
#
# GL static library
#
###########################

include $(CLEAR_VARS)

LOCAL_MODULE := gl4es_114

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES) -DBCMHOST

LOCAL_SRC_FILES := \
	src/glsl_optimizer/src/code/ir_print_glsl_visitor.cpp \
    src/glsl_optimizer/src/code/optimizer.cpp \
    src/glsl_optimizer/src/code/c_wrapper.cpp \
    src/glsl_optimizer/src/code/GlslConvert.cpp \
    src/glsl_optimizer/src/code/ir_print_ir_visitor.cpp \
    src/glsl_optimizer/src/util/compat_layer.cpp \
    src/glsl_optimizer/src/util/u_qsort.cpp \
    src/glsl_optimizer/src/util/u_debug_stack_android.cpp \
    src/glsl_optimizer/src/compiler/nir_types.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_validate.cpp \
    src/glsl_optimizer/src/compiler/glsl/hir_field_selection.cpp \
    src/glsl_optimizer/src/compiler/glsl/builtin_variables.cpp \
    src/glsl_optimizer/src/compiler/glsl/glsl_parser.cpp \
    src/glsl_optimizer/src/compiler/glsl/generate_ir.cpp \
    src/glsl_optimizer/src/compiler/glsl/glsl_to_nir.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_array_refcount.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_instructions.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_discard_flow.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_dead_builtin_variables.cpp \
    src/glsl_optimizer/src/compiler/glsl/link_varyings.cpp \
    src/glsl_optimizer/src/compiler/glsl/glsl_parser_extras.cpp \
    src/glsl_optimizer/src/compiler/glsl/builtin_types.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_algebraic.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_named_interface_blocks.cpp \
    src/glsl_optimizer/src/compiler/glsl/link_uniforms.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_tree_grafting.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_constant_expression.cpp \
    src/glsl_optimizer/src/compiler/glsl/ast_type.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_jumps.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_if_simplification.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_hierarchical_visitor.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_builder.cpp \
    src/glsl_optimizer/src/compiler/glsl/ast_array_index.cpp \
    src/glsl_optimizer/src/compiler/glsl/propagate_invariance.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_hv_accept.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_builtins.cpp \
    src/glsl_optimizer/src/compiler/glsl/link_interface_blocks.cpp \
    src/glsl_optimizer/src/compiler/glsl/ast_to_hir.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_function_detect_recursion.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_packing_builtins.cpp \
    src/glsl_optimizer/src/compiler/glsl/loop_analysis.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_rvalue_visitor.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_clone.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_flip_matrices.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_dead_code.cpp \
    src/glsl_optimizer/src/compiler/glsl/link_uniform_block_active_visitor.cpp \
    src/glsl_optimizer/src/compiler/glsl/s_expression.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_reader.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_equals.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_function_can_inline.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_vec_index_to_cond_assign.cpp \
    src/glsl_optimizer/src/compiler/glsl/standalone_scaffolding.cpp \
    src/glsl_optimizer/src/compiler/glsl/link_uniform_blocks.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_function_inlining.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_mat_op_to_vec.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_blend_equation_advanced.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_expression_flattening.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_dead_code_local.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_flatten_nested_if_blocks.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_function.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_precision.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_variable_refcount.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_vector_derefs.cpp \
    src/glsl_optimizer/src/compiler/glsl/builtin_functions.cpp \
    src/glsl_optimizer/src/compiler/glsl/linker_util.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_distance.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_rebalance_tree.cpp \
    src/glsl_optimizer/src/compiler/glsl/linker.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_dead_functions.cpp \
    src/glsl_optimizer/src/compiler/glsl/glsl_symbol_table.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_subroutine.cpp \
    src/glsl_optimizer/src/compiler/glsl/glsl_lexer.cpp \
    src/glsl_optimizer/src/compiler/glsl/link_functions.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_int64.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_discard.cpp \
    src/glsl_optimizer/src/compiler/glsl/string_to_uint_map.cpp \
    src/glsl_optimizer/src/compiler/glsl/ast_function.cpp \
    src/glsl_optimizer/src/compiler/glsl/ast_expr.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_print_visitor.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_minmax.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_basic_block.cpp \
    src/glsl_optimizer/src/compiler/glsl/ir_builder_print_visitor.cpp \
    src/glsl_optimizer/src/compiler/glsl_types.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_swizzle.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_constant_variable.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_constant_folding.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_constant_propagation.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_copy_propagation.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_structure_splitting.cpp \
    src/glsl_optimizer/src/compiler/glsl/opt_vectorize.cpp \
    src/glsl_optimizer/src/compiler/glsl/lower_vec_index_to_swizzle.cpp \
    src/glsl_optimizer/src/util/sha1/sha1.c \
    src/glsl_optimizer/src/util/u_debug_stack.c \
    src/glsl_optimizer/src/util/u_vector.c \
    src/glsl_optimizer/src/util/u_debug.c \
    src/glsl_optimizer/src/util/bitscan.c \
    src/glsl_optimizer/src/util/vma.c \
    src/glsl_optimizer/src/util/half_float.c \
    src/glsl_optimizer/src/util/u_idalloc.c \
    src/glsl_optimizer/src/util/u_process.c \
    src/glsl_optimizer/src/util/rgtc.c \
    src/glsl_optimizer/src/util/u_worklist.c \
    src/glsl_optimizer/src/util/sparse_array.c \
    src/glsl_optimizer/src/util/u_dl.c \
    src/glsl_optimizer/src/util/os_file.c \
    src/glsl_optimizer/src/util/fossilize_db.c \
    src/glsl_optimizer/src/util/u_thread.c \
    src/glsl_optimizer/src/util/build_id.c \
    src/glsl_optimizer/src/util/u_printf.c \
    src/glsl_optimizer/src/util/rb_tree.c \
    src/glsl_optimizer/src/util/register_allocate.c \
    src/glsl_optimizer/src/util/fast_idiv_by_const.c \
    src/glsl_optimizer/src/util/disk_cache_os.c \
    src/glsl_optimizer/src/util/blob.c \
    src/glsl_optimizer/src/util/strtod.c \
    src/glsl_optimizer/src/util/os_misc.c \
    src/glsl_optimizer/src/util/hash_table.c \
    src/glsl_optimizer/src/util/u_atomic.c \
    src/glsl_optimizer/src/util/softfloat.c \
    src/glsl_optimizer/src/util/crc32.c \
    src/glsl_optimizer/src/util/rand_xor.c \
    src/glsl_optimizer/src/util/os_memory_fd.c \
    src/glsl_optimizer/src/util/u_hash_table.c \
    src/glsl_optimizer/src/util/double.c \
    src/glsl_optimizer/src/util/slab.c \
    src/glsl_optimizer/src/util/futex.c \
    src/glsl_optimizer/src/util/u_queue.c \
    src/glsl_optimizer/src/util/u_call_once.c \
    src/glsl_optimizer/src/util/disk_cache.c \
    src/glsl_optimizer/src/util/set.c \
    src/glsl_optimizer/src/util/u_debug_memory.c \
    src/glsl_optimizer/src/util/u_math.c \
    src/glsl_optimizer/src/util/mesa_cache_db.c \
    src/glsl_optimizer/src/util/simple_mtx.c \
    src/glsl_optimizer/src/util/mesa-sha1.c \
    src/glsl_optimizer/src/util/log.c \
    src/glsl_optimizer/src/util/compress.c \
    src/glsl_optimizer/src/util/format/u_format_rgtc.c \
    src/glsl_optimizer/src/util/format/u_format_etc.c \
    src/glsl_optimizer/src/util/format/u_format_unpack_neon.c \
    src/glsl_optimizer/src/util/format/u_format_zs.c \
    src/glsl_optimizer/src/util/format/u_format_latc.c \
    src/glsl_optimizer/src/util/format/u_format_table.c \
    src/glsl_optimizer/src/util/format/u_format.c \
    src/glsl_optimizer/src/util/format/u_format_other.c \
    src/glsl_optimizer/src/util/format/u_format_fxt1.c \
    src/glsl_optimizer/src/util/format/u_format_bptc.c \
    src/glsl_optimizer/src/util/format/u_format_s3tc.c \
    src/glsl_optimizer/src/util/format/u_format_yuv.c \
    src/glsl_optimizer/src/util/string_buffer.c \
    src/glsl_optimizer/src/util/os_socket.c \
    src/glsl_optimizer/src/util/mesa_cache_db_multipart.c \
    src/glsl_optimizer/src/util/u_cpu_detect.c \
    src/glsl_optimizer/src/util/u_mm.c \
    src/glsl_optimizer/src/util/u_debug_describe.c \
    src/glsl_optimizer/src/util/anon_file.c \
    src/glsl_optimizer/src/util/dag.c \
    src/glsl_optimizer/src/util/format_srgb.c \
    src/glsl_optimizer/src/util/ralloc.c \
    src/glsl_optimizer/src/util/os_time.c \
    src/glsl_optimizer/src/util/u_debug_refcnt.c \
    src/glsl_optimizer/src/util/u_debug_symbol.c \
    src/glsl_optimizer/src/util/streaming-load-memcpy.c \
    src/glsl_optimizer/src/mesa/main/debug_output.c \
    src/glsl_optimizer/src/mesa/main/errors.c \
    src/glsl_optimizer/src/mesa/main/extensions_table.c \
    src/glsl_optimizer/src/mesa/main/imports.c \
    src/glsl_optimizer/src/mesa/program/symbol_table.c \
    src/glsl_optimizer/src/mesa/program/prog_parameter.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_link_uniform_initializers.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_packed_varyings.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_opt_dead_builtin_varyings.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_xfb_varying.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_atomics.c \
    src/glsl_optimizer/src/compiler/glsl/glcpp/glcpp.c \
    src/glsl_optimizer/src/compiler/glsl/glcpp/glcpp-parse.c \
    src/glsl_optimizer/src/compiler/glsl/glcpp/pp.c \
    src/glsl_optimizer/src/compiler/glsl/glcpp/pp_standalone_scaffolding.c \
    src/glsl_optimizer/src/compiler/glsl/glcpp/glcpp-lex.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_samplers_as_deref.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_buffers.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_link_uniforms.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_link_varyings.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_linker.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_link_xfb.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_link_atomics.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_link_uniform_blocks.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_samplers.c \
    src/glsl_optimizer/src/compiler/glsl/gl_nir_lower_images.c \
    src/glsl_optimizer/src/compiler/shader_enums.c \
    src/glsl_optimizer/src/compiler/nir/nir_opcodes.c \
    src/glsl_optimizer/src/compiler/nir/nir_from_ssa.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_point_smooth.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_shrink_vectors.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_wpos_ytransform.c \
    src/glsl_optimizer/src/compiler/nir/nir_metadata.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_bit_size.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_shader_calls.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_printf.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_clip.c \
    src/glsl_optimizer/src/compiler/nir/nir_scale_fdiv.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_preamble.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_dead_write_vars.c \
    src/glsl_optimizer/src/compiler/nir/nir_inline_functions.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_sysvals_to_varyings.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_two_sided_color.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_remove_phis.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_phis_to_scalar.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_copy_propagate.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_vec_to_movs.c \
    src/glsl_optimizer/src/compiler/nir/nir_phi_builder.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_single_sampled.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_peephole_select.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_cse.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_dead_cf.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_returns.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_discard_or_demote.c \
    src/glsl_optimizer/src/compiler/nir/nir_normalize_cubemap_coords.c \
    src/glsl_optimizer/src/compiler/nir/nir_search.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_bool_to_bitsize.c \
    src/glsl_optimizer/src/compiler/nir/nir_worklist.c \
    src/glsl_optimizer/src/compiler/nir/nir_passthrough_gs.c \
    src/glsl_optimizer/src/compiler/nir/nir_move_vec_src_uses_to_dest.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_packing.c \
    src/glsl_optimizer/src/compiler/nir/nir_group_loads.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_gcm.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_viewport_transform.c \
    src/glsl_optimizer/src/compiler/nir/nir_gather_xfb_info.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_subgroups.c \
    src/glsl_optimizer/src/compiler/nir/nir_gather_ssa_types.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_clip_halfz.c \
    src/glsl_optimizer/src/compiler/nir/nir_builder.c \
    src/glsl_optimizer/src/compiler/nir/nir_deref.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_shrink_stores.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_int64.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_load_store_vectorize.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_algebraic.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_mem_access_bit_sizes.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_find_array_copies.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_bool_to_int32.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_barriers.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_passthrough_edgeflags.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_constant_folding.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_move_discards_to_top.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_goto_ifs.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_image.c \
    src/glsl_optimizer/src/compiler/nir/nir_repair_ssa.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_memory_model.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_cl_images.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_ray_queries.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_poly_line_smooth.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_vectorize.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_pntc_ytransform.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_variable_initializers.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_interpolation.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_comparison_pre.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_if.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_io_to_scalar.c \
    src/glsl_optimizer/src/compiler/nir/nir.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_sink.c \
    src/glsl_optimizer/src/compiler/nir/nir_builtin_builder.c \
    src/glsl_optimizer/src/compiler/nir/nir_split_64bit_vec3_and_vec4.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_alpha_test.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_readonly_images_to_tex.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_offsets.c \
    src/glsl_optimizer/src/compiler/nir/nir_liveness.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_io_to_temporaries.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_task_shader.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_intrinsics.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_frexp.c \
    src/glsl_optimizer/src/compiler/nir/nir_validate.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_ubo_vec4.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_continue_constructs.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_vars_to_ssa.c \
    src/glsl_optimizer/src/compiler/nir/nir_mod_analysis.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_access.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_alu_width.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_bool_to_float.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_global_vars_to_local.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_tex_shadow.c \
    src/glsl_optimizer/src/compiler/nir/nir_split_var_copies.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_rematerialize_compares.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_system_values.c \
    src/glsl_optimizer/src/compiler/nir/nir_inline_uniforms.c \
    src/glsl_optimizer/src/compiler/nir/nir_dominance.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_texcoord_replace_late.c \
    src/glsl_optimizer/src/compiler/nir/nir_gs_count_vertices.c \
    src/glsl_optimizer/src/compiler/nir/nir_print.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_copy_prop_vars.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_indirect_derefs.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_phi_precision.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_fragdepth.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_is_helper_invocation.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_point_size.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_uniform_atomics.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_flrp.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_loop_unroll.c \
    src/glsl_optimizer/src/compiler/nir/nir_clone.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_texcoord_replace.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_samplers.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_clip_disable.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_io_to_vector.c \
    src/glsl_optimizer/src/compiler/nir/nir_split_vars.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_input_attachments.c \
    src/glsl_optimizer/src/compiler/nir/nir_schedule.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_fragcolor.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_tex.c \
    src/glsl_optimizer/src/compiler/nir/nir_range_analysis.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_regs_to_ssa.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_blend.c \
    src/glsl_optimizer/src/compiler/nir/nir_divergence_analysis.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_drawpixels.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_trivial_continues.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_idiv_const.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_fragcoord_wtrans.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_bitmap.c \
    src/glsl_optimizer/src/compiler/nir/nir_passthrough_tcs.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_undef.c \
    src/glsl_optimizer/src/compiler/nir/nir_gather_info.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_wrmasks.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_vec3_to_vec4.c \
    src/glsl_optimizer/src/compiler/nir/nir_serialize.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_idiv.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_non_uniform_access.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_array_deref_of_vec.c \
    src/glsl_optimizer/src/compiler/nir/nir_control_flow.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_large_constants.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_wpos_center.c \
    src/glsl_optimizer/src/compiler/nir/nir_constant_expressions.c \
    src/glsl_optimizer/src/compiler/nir/nir_linking_helpers.c \
    src/glsl_optimizer/src/compiler/nir/nir_instr_set.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_mediump.c \
    src/glsl_optimizer/src/compiler/nir/nir_split_per_member_structs.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_convert_alu_types.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_gs_intrinsics.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_int_to_float.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_to_source_mods.c \
    src/glsl_optimizer/src/compiler/nir/nir_remove_dead_variables.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_alu.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_var_copies.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_discard_if.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_atomics_to_ssbo.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_fb_read.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_flatshade.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_clip_cull_distance_arrays.c \
    src/glsl_optimizer/src/compiler/nir/nir_propagate_invariant.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_helper_writes.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_const_arrays_to_uniforms.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_memcpy.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_conditional_discard.c \
    src/glsl_optimizer/src/compiler/nir/nir_to_lcssa.c \
    src/glsl_optimizer/src/compiler/nir/nir_sweep.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_uniforms_to_ubo.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_combine_stores.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_fp16_conv.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_clamp_color_outputs.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_point_size_mov.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_dce.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_double_ops.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_non_uniform_access.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_ssbo.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_load_const_to_scalar.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_io.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_scratch.c \
    src/glsl_optimizer/src/compiler/nir/nir_opt_move.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_amul.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_multiview.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_patch_vertices.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_undef_to_zero.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_io_arrays_to_elements.c \
    src/glsl_optimizer/src/compiler/nir/nir_loop_analyze.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_memcpy.c \
    src/glsl_optimizer/src/compiler/nir/nir_intrinsics.c \
    src/glsl_optimizer/src/compiler/nir/nir_lower_locals_to_regs.c \
	src/gl/arbconverter.c \
	src/gl/arbgenerator.c \
	src/gl/arbhelper.c \
	src/gl/arbparser.c \
	src/gl/array.c \
	src/gl/blend.c \
	src/gl/blit.c \
	src/gl/buffers.c \
	src/gl/build_info.c \
	src/gl/debug.c \
	src/gl/decompress.c \
	src/gl/depth.c \
	src/gl/directstate.c \
	src/gl/drawing.c \
	src/gl/enable.c \
	src/gl/envvars.c \
	src/gl/eval.c \
	src/gl/face.c \
	src/gl/fog.c \
	src/gl/fpe.c \
	src/gl/fpe_cache.c \
	src/gl/fpe_shader.c \
	src/gl/framebuffers.c \
	src/gl/gl_lookup.c \
	src/gl/getter.c \
	src/gl/gl4es.c \
	src/gl/glstate.c \
	src/gl/hint.c \
    src/gl/host.c \
	src/gl/init.c \
	src/gl/light.c \
	src/gl/line.c \
	src/gl/list.c \
	src/gl/listdraw.c \
	src/gl/listrl.c \
	src/gl/loader.c \
	src/gl/logs.c \
	src/gl/matrix.c \
	src/gl/matvec.c \
	src/gl/oldprogram.c \
	src/gl/pixel.c \
	src/gl/planes.c \
	src/gl/pointsprite.c \
	src/gl/preproc.c \
	src/gl/program.c \
	src/gl/queries.c \
	src/gl/raster.c \
	src/gl/render.c \
	src/gl/samplers.c \
	src/gl/shader.c \
	src/gl/shaderconv.c \
	src/gl/shader_hacks.c \
	src/gl/stack.c \
	src/gl/stencil.c \
	src/gl/string_utils.c \
	src/gl/stubs.c \
	src/gl/texenv.c \
	src/gl/texgen.c \
	src/gl/texture.c \
	src/gl/texture_compressed.c \
	src/gl/texture_params.c \
	src/gl/texture_read.c \
	src/gl/texture_3d.c \
	src/gl/uniform.c \
	src/gl/vertexattrib.c \
	src/gl/wrap/gl4eswraps.c \
	src/gl/wrap/gles.c \
	src/gl/wrap/glstub.c \
	src/gl/math/matheval.c \
	src/glx/hardext.c \
	src/glx/glx.c \
	src/glx/lookup.c \
	src/glx/gbm.c \
	src/glx/streaming.c \
	src/gl/vgpu/shaderconv.c \
	src/gl/vgpu/state.c \
    src/gl/vgpu/buffer_copier.c \
    src/gl/iProtecc/iprotecc_string.c \




LOCAL_CPP_FEATURES := exceptions

LOCAL_CPPFLAGS = -std=gnu++20 -DANDROID -DHAVE_STRUCT_TIMESPEC -DDETECT_OS_ANDROID

#LOCAL_CFLAGS += -g -funwind-tables -fvisibility=hidden -include include/android_debug.h
#LOCAL_CFLAGS += -DDEBUG
#LOCAL_CFLAGS += -Ofast -ffast-math -mllvm -polly -flto

# RELEASE
LOCAL_CFLAGS += -Ofast -ffast-math -mllvm -polly -fvisibility=hidden -flto
LOCAL_LDFLAGS := -flto

LOCAL_CFLAGS += -DNOX11
LOCAL_CFLAGS += -DNO_GBM
#LOCAL_CFLAGS += -DNO_INIT_CONSTRUCTOR
LOCAL_CFLAGS += -DDEFAULT_ES=2

LOCAL_CFLAGS += -std=gnu2x
LOCAL_CFLAGS += -D_LIB
LOCAL_CFLAGS += -DNOMINMAX
LOCAL_CFLAGS += -D_USE_MATH_DEFINES
LOCAL_CFLAGS += -D__STDC_NO_THREADS__
LOCAL_CFLAGS += -D__STDC_LIMIT_MACROS
LOCAL_CFLAGS += -D__STDC_FORMAT_MACROS
LOCAL_CFLAGS += -D__STDC_CONSTANT_MACROS
LOCAL_CFLAGS += -DUTIL_ARCH_LITTLE_ENDIAN
LOCAL_CFLAGS += -DUNIX
LOCAL_CFLAGS += -DANDROID -DHAVE_STRUCT_TIMESPEC -DDETECT_OS_ANDROID
LOCAL_CFLAGS += -DHAVE_OPENGL
LOCAL_CFLAGS += -DHAVE_OPENGL_ES_1
LOCAL_CFLAGS += -DHAVE_OPENGL_ES_2

//TODO: maybe temporary?
LOCAL_CFLAGS += -Wno-typedef-redefinition -Wno-dangling-else

LOCAL_LDLIBS := -llog
#building as a static lib

include $(BUILD_SHARED_LIBRARY)
