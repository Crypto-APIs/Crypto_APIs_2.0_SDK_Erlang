-module(cryptoapis_get_next_available_nonce_ri).

-export([encode/1]).

-export_type([cryptoapis_get_next_available_nonce_ri/0]).

-type cryptoapis_get_next_available_nonce_ri() ::
    #{ 'nextAvailableNonce' := integer()
     }.

encode(#{ 'nextAvailableNonce' := NextAvailableNonce
        }) ->
    #{ 'nextAvailableNonce' => NextAvailableNonce
     }.
