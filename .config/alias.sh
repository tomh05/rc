ag(){
    grep -r "$*" .
}

agi(){
    grep -r "$*" --ignore-case .
}


findn() {
    find . -name $*
}
