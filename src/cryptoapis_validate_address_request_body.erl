-module(cryptoapis_validate_address_request_body).

-export([encode/1]).

-export_type([cryptoapis_validate_address_request_body/0]).

-type cryptoapis_validate_address_request_body() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_validate_address_request_body_data:cryptoapis_validate_address_request_body_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
