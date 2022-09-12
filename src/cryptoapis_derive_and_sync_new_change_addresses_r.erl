-module(cryptoapis_derive_and_sync_new_change_addresses_r).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_change_addresses_r/0]).

-type cryptoapis_derive_and_sync_new_change_addresses_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_derive_and_sync_new_change_addresses_r_data:cryptoapis_derive_and_sync_new_change_addresses_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
