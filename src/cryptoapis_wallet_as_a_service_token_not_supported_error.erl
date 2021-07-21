-module(cryptoapis_wallet_as_a_service_token_not_supported_error).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_token_not_supported_error/0]).

-type cryptoapis_wallet_as_a_service_token_not_supported_error() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
