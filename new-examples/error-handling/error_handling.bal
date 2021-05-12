import ballerina/io;

// Convert bytes to a string and then to an int.
function intFromBytes(byte[] bytes) returns int|error {
    string|error ret = string:fromBytes(bytes);

    // The `is` operator can be used to distinguish errors
    // from others value.
    if ret is error {
        return ret;
    } else {
        return int:fromString(ret);
    }
}

// The `main` function can return an error.
public function main() returns error? {
    int|error res = intFromBytes([104, 101, 108, 108, 111]);    
    if res is error {
        return res;
    } else {
        io:println("result: ", res);
    }
}
