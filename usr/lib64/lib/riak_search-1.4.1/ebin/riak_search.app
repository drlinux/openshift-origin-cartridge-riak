{application,riak_search,
             [{description,"Riak Search"},
              {vsn,"1.4.1"},
              {registered,[]},
              {applications,[kernel,stdlib,riak_api,riak_core,riak_kv,
                             merge_index]},
              {mod,{riak_search_app,[]}},
              {env,[{search_backend,merge_index_backend},
                    {n_val,2},
                    {index_batch_size,10000},
                    {max_search_results,100000},
                    {dir_index_workers,8},
                    {dir_index_stats_interval,10},
                    {dir_index_batch_size,10},
                    {dir_index_batch_bytes,1048576},
                    {fold_batch_size,100}]},
              {modules,[basho_bench_driver_riaksearch,merge_index_backend,
                        riak_indexed_doc,riak_search,riak_search_app,
                        riak_search_backend,riak_search_basic_qc,
                        riak_search_cinfo,riak_search_client,riak_search_cmd,
                        riak_search_config,riak_search_dir_indexer,
                        riak_search_ets_backend,riak_search_inlines,
                        riak_search_kv_erlang_binary_extractor,
                        riak_search_kv_erlang_extractor,
                        riak_search_kv_extractor,riak_search_kv_hook,
                        riak_search_kv_json_extractor,
                        riak_search_kv_raw_extractor,
                        riak_search_kv_xml_extractor,riak_search_op,
                        riak_search_op_group,riak_search_op_intersection,
                        riak_search_op_mockterm,riak_search_op_negation,
                        riak_search_op_node,riak_search_op_proximity,
                        riak_search_op_range,riak_search_op_range_sized,
                        riak_search_op_range_worker,riak_search_op_scope,
                        riak_search_op_string,riak_search_op_term,
                        riak_search_op_union,riak_search_op_utils,
                        riak_search_operators_qc,riak_search_pb_query,
                        riak_search_repl_helper,riak_search_ring_utils,
                        riak_search_schema,riak_search_schema_parser,
                        riak_search_stat,riak_search_sup,riak_search_test,
                        riak_search_utils,riak_search_vnode,
                        riak_search_vnode_sup,riak_search_worker,
                        riak_solr_indexer_wm,riak_solr_output,riak_solr_qc,
                        riak_solr_search_client,riak_solr_searcher_wm,
                        riak_solr_sort,riak_solr_xml,riak_solr_xml_xform,
                        search,solr_search,text_analyzers]}]}.