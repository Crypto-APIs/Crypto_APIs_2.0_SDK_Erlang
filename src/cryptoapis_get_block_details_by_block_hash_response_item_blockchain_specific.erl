-module(cryptoapis_get_block_details_by_block_hash_response_item_blockchain_specific).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_response_item_blockchain_specific/0]).

-type cryptoapis_get_block_details_by_block_hash_response_item_blockchain_specific() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'strippedSize' := integer(),
       'version' := integer(),
       'versionHex' := binary(),
       'weight' := integer(),
       'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'sha3Uncles' := binary(),
       'totalDifficulty' := binary(),
       'uncles' := list(),
       'merkleroot' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'strippedSize' := StrippedSize,
          'version' := Version,
          'versionHex' := VersionHex,
          'weight' := Weight,
          'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'sha3Uncles' := Sha3Uncles,
          'totalDifficulty' := TotalDifficulty,
          'uncles' := Uncles,
          'merkleroot' := Merkleroot
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'strippedSize' => StrippedSize,
       'version' => Version,
       'versionHex' => VersionHex,
       'weight' => Weight,
       'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'sha3Uncles' => Sha3Uncles,
       'totalDifficulty' => TotalDifficulty,
       'uncles' => Uncles,
       'merkleroot' => Merkleroot
     }.
