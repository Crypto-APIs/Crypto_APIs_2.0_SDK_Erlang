-module(cryptoapis_invalid_api_key).

-export([encode/1]).

-export_type([cryptoapis_invalid_api_key/0]).

-type cryptoapis_invalid_api_key() ::
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
