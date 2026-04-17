

say [Ancient Abilities] Succesfully loaded!
function ancient_abilities:message {target:"@a",message:'{text: "Succesfully loaded! ",color: green},"\\n",{text: "Click here to uninstall.",color: red,bold:true,underlined:true,click_event: {action: "run_command",command: "function ancient_abilities:uninstall"}}'}