-module(cryptoapis_derive_and_sync_new_receiving_addresses_403_response).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_receiving_addresses_403_response/0]).

-type cryptoapis_derive_and_sync_new_receiving_addresses_403_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_derive_and_sync_new_receiving_addresses_e403:cryptoapis_derive_and_sync_new_receiving_addresses_e403()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
