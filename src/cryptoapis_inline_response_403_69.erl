-module(cryptoapis_inline_response_403_69).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_69/0]).

-type cryptoapis_inline_response_403_69() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_token_details_by_contract_address_e403:cryptoapis_get_token_details_by_contract_address_e403()
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
