-module(cryptoapis_invalid_api_key_error).

-export([encode/1]).

-export_type([cryptoapis_invalid_api_key_error/0]).

-type cryptoapis_invalid_api_key_error() ::
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
