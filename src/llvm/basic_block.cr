struct LLVM::BasicBlock
  def initialize(@unwrap : LibLLVM::BasicBlockRef)
  end

  def instructions
    InstructionCollection.new self
  end

  def delete
    LibLLVM.delete_basic_block self
  end

  def to_unsafe
    @unwrap
  end
end
