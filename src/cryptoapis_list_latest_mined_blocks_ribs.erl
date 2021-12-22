-module(cryptoapis_list_latest_mined_blocks_ribs).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribs/0]).

-type cryptoapis_list_latest_mined_blocks_ribs() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'strippedSize' := integer(),
       'version' := integer(),
       'versionHex' := binary(),
       'weight' := integer(),
       'extraData' := binary(),
       'gasLimit' := integer(),
       'gasUsed' := integer(),
       'minedInSeconds' := integer(),
       'sha3Uncles' := binary(),
       'totalDifficulty' := binary(),
       'uncles' := list(),
       'dsBlock' := integer(),
       'dsDifficulty' := binary(),
       'dsLeader' := binary(),
       'microBlocks' := list()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'difficulty' := Difficulty,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
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
          'dsBlock' := DsBlock,
          'dsDifficulty' := DsDifficulty,
          'dsLeader' := DsLeader,
          'microBlocks' := MicroBlocks
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'difficulty' => Difficulty,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
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
       'dsBlock' => DsBlock,
       'dsDifficulty' => DsDifficulty,
       'dsLeader' => DsLeader,
       'microBlocks' => MicroBlocks
     }.
