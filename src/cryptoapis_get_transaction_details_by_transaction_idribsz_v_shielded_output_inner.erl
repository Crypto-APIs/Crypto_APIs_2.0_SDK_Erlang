-module(cryptoapis_get_transaction_details_by_transaction_idribsz_v_shielded_output_inner).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsz_v_shielded_output_inner/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsz_v_shielded_output_inner() ::
    #{ 'cmu' := binary(),
       'cv' := binary(),
       'encCipherText' := binary(),
       'ephemeralKey' := binary(),
       'outCipherText' := binary(),
       'proof' := binary()
     }.

encode(#{ 'cmu' := Cmu,
          'cv' := Cv,
          'encCipherText' := EncCipherText,
          'ephemeralKey' := EphemeralKey,
          'outCipherText' := OutCipherText,
          'proof' := Proof
        }) ->
    #{ 'cmu' => Cmu,
       'cv' => Cv,
       'encCipherText' => EncCipherText,
       'ephemeralKey' => EphemeralKey,
       'outCipherText' => OutCipherText,
       'proof' => Proof
     }.
