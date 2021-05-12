-module(cryptoapis_insufficient_credits_error).

-export([encode/1]).

-export_type([cryptoapis_insufficient_credits_error/0]).

-type cryptoapis_insufficient_credits_error() ::
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
