OUTPUT_FORMAT(elf64-x86-64)
ENTRY(mmk_entry)

SECTIONS
{
    _MMK_START_ADDRESS = .;

	.text : ALIGN(0x1000)
	{
		*(.text)
	}
	.data : ALIGN(0x1000)
	{
		*(.data)
	}
	.rodata : ALIGN(0x1000)
	{
		*(.rodata)
	}
	.bss : ALIGN(0x1000)
	{
		*(COMMON)
		*(.bss)
	}
    
    _MMK_END_ADDRESS = .;
}
