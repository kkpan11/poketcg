TX_END        EQU $00

; TX_FULLWIDTH*, char1, TX_FULLWIDTH*, char2, ...
TX_FULLWIDTH1 EQU $01
TX_FULLWIDTH2 EQU $02
TX_FULLWIDTH3 EQU $03
TX_FULLWIDTH4 EQU $04

TX_CTRL_BEGIN EQU $05

; TX_SYMBOL, char1, TX_SYMBOL, char2, ...
TX_SYMBOL     EQU $05

; TX_HALFWIDTH, char1, char2, ...
TX_HALFWIDTH  EQU $06 ; sets wFontWidth to HALF_WIDTH

TX_HALF2FULL  EQU $07 ; sets wFontWidth to FULL_WIDTH, and hDefaultFont to TX_FULLWIDTH6
TX_RAM1       EQU $09
TX_LINE       EQU "\n" ; $0a
TX_RAM2       EQU $0b
TX_RAM3       EQU $0c

; usage: TX_FULLWIDTH*, char1, char2, ...
; db char1, char2, ... defaults to the value at hDefaultFont, unless
; wFontWidth was set to HALF_WIDTH by TX_HALFWIDTH (it is FULL_WIDTH by default).
; hDefaultFont is TX_FULLWIDTH6 by default.
TX_FULLWIDTH5 EQU $0e ; sets hDefaultFont to TX_FULLWIDTH5
TX_FULLWIDTH6 EQU $0f ; sets hDefaultFont to TX_FULLWIDTH6

TX_CTRL_END   EQU $10

text   EQUS "db TX_HALFWIDTH, "
line   EQUS "db TX_LINE, "
done   EQUS "db TX_END"

	charmap "é", "`"
	charmap "♂", "$"
	charmap "♀", "%"
	charmap "”", "\""

; wFontWidth constants
FULL_WIDTH EQU $0
HALF_WIDTH EQU $1 ; non-0

; TX_SYMBOL (full-tile icons/symbols loaded at the beginning of v0Tiles2)
; TODO: Use symbols in menus (cursor tile number, tile behind cursor), draw text boxes, WriteByteToBGMap0, etc
;       If user-defined functions ever become a thing a symbol(*) syntax would probably be preferred over SYM_*

	charmap "<", TX_SYMBOL
	const_def
	txsymbol SPACE      ; $00
	txsymbol FIRE       ; $01
	txsymbol GRASS      ; $02
	txsymbol LIGHTNING  ; $03
	txsymbol WATER      ; $04
	txsymbol FIGHTING   ; $05
	txsymbol PSYCHIC    ; $06
	txsymbol COLORLESS  ; $07
	txsymbol POISONED   ; $08
	txsymbol ASLEEP     ; $09
	txsymbol CONFUSED   ; $0a
	txsymbol PARALYZED  ; $0b
	txsymbol CURSOR_U   ; $0c
	txsymbol POKEMON    ; $0d
	txsymbol UNKNOWN_0E ; $0e
	txsymbol CURSOR_R   ; $0f
	txsymbol HP         ; $10
	txsymbol Lv         ; $11
	txsymbol E          ; $12
	txsymbol No         ; $13
	txsymbol PLUSPOWER  ; $14
	txsymbol DEFENDER   ; $15
	txsymbol HP_OK      ; $16
	txsymbol HP_NOK     ; $17
	txsymbol BOX_TOP_L  ; $18
	txsymbol BOX_TOP_R  ; $19
	txsymbol BOX_BTM_L  ; $1a
	txsymbol BOX_BTM_R  ; $1b
	txsymbol BOX_TOP    ; $1c
	txsymbol BOX_BOTTOM ; $1d
	txsymbol BOX_LEFT   ; $1e
	txsymbol BOX_RIGHT  ; $1f
	txsymbol 0          ; $20
	txsymbol 1          ; $21
	txsymbol 2          ; $22
	txsymbol 3          ; $23
	txsymbol 4          ; $24
	txsymbol 5          ; $25
	txsymbol 6          ; $26
	txsymbol 7          ; $27
	txsymbol 8          ; $28
	txsymbol 9          ; $29
	txsymbol DOT        ; $2a
	txsymbol PLUS       ; $2b
	txsymbol MINUS      ; $2c
	txsymbol x          ; $2d
	txsymbol SLASH      ; $2e
	txsymbol CURSOR_D   ; $2f
	txsymbol PRIZE      ; $30
