-module(cryptoapis_invalid_request_body_structure).

-export([encode/1]).

-export_type([cryptoapis_invalid_request_body_structure/0]).

-type cryptoapis_invalid_request_body_structure() ::
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
