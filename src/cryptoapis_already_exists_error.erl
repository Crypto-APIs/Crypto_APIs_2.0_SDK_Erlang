-module(cryptoapis_already_exists_error).

-export([encode/1]).

-export_type([cryptoapis_already_exists_error/0]).

-type cryptoapis_already_exists_error() ::
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
