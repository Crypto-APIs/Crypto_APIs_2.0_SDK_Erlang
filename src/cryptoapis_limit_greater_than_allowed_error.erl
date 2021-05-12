-module(cryptoapis_limit_greater_than_allowed_error).

-export([encode/1]).

-export_type([cryptoapis_limit_greater_than_allowed_error/0]).

-type cryptoapis_limit_greater_than_allowed_error() ::
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
