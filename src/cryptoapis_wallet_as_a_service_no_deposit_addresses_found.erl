-module(cryptoapis_wallet_as_a_service_no_deposit_addresses_found).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_no_deposit_addresses_found/0]).

-type cryptoapis_wallet_as_a_service_no_deposit_addresses_found() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_wallet_as_a_service_no_deposit_addresses_found_error:cryptoapis_wallet_as_a_service_no_deposit_addresses_found_error()
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
