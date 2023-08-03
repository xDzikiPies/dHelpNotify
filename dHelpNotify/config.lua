Config = {}


Config.Keys = {
    ['A'], ['B'], ['C'], ['D'], ['E'], ['F'], ['G'], ['H'], ['I'], ['J'], ['K'], ['L'], ['M'],
    ['N'], ['O'], ['P'], ['Q'], ['R'], ['S'], ['T'], ['U'], ['V'], ['W'], ['X'], ['Y'], ['Z'],
    ['0'], ['1'], ['2'], ['3'], ['4'], ['5'], ['6'], ['7'], ['8'], ['9'],
    ['F1'], ['F2'], ['F3'], ['F4'], ['F5'], ['F6'], ['F7'], ['F8'], ['F9'], ['F10'], ['F11'], ['F12'],
    ['`'], ['-'], ['='], ['['], [']'], ['\\'], [';'], ['\''], [','], ['.'], ['/'],
    ['~'], ['!'], ['@'], ['#'], ['$'], ['%'], ['^'], ['&'], ['*'], ['('], [')'], ['_'], ['+'],
    ['{'], ['}'], ['|'], [':'], ['"'], ['<'], ['>'], ['?'],
    ['Up'], ['Down'], ['Left'], ['Right'], ['Space'], ['Enter'], ['Tab'], ['Backspace'], ['Delete'],
    ['Insert'], ['Home'], ['End'], ['PageUp'], ['PageDown'], ['Pause'], ['Escape'], ['PrintScreen'],
    ['ScrollLock'], ['CapsLock'], ['NumLock'], ['Clear'], ['Help'], ['Menu'],

    ['Num0'], ['Num1'], ['Num2'], ['Num3'], ['Num4'], ['Num5'], ['Num6'], ['Num7'], ['Num8'], ['Num9'],
    ['NumLock'], ['Num/'], ['Num*'], ['Num-'], ['Num+'], ['NumDecimal'], ['NumEnter'],
}


Config.CustomNotify = function(msg)

    ESX.ShowNotification(msg)

end

Config.Lang = {
    ['NoKey'] = 'This key does not exist in Config.Keys'
}