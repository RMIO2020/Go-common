package resp

var En = subMsgType{
	//基本操作
	Success:           "success",
	UnknownError:      "Unknown error, please contact support",
	ParameterError:    "Parameter error",
	OperationFailed:   "Operation failed",
	MissingParameters: "Missing parameters",
	InvalidOperation:  "Invalid operation",
	UserNotAuthorize:  "User is not authorized",
	FrequencyTooFast:  "Frequency too fast",

	//用户
	UserExists:    "User already exists",
	UserNotExists: "User does not exist",
	LackBalance:   "Insufficient balance",

	//验证
	PasswordError:     "Username or Password error",
	TokenParsingError: "Token parsing error",
	TokenExpire:       "Token expire",
	TokenError:        "Token error",
	TokenNotValid:     "Token is not valid",
	GoogleCodeError:   "Google code error",
	PasswordNotSet:    "Password is not set",

	// 文件
	FileUploadFail: "Upload file error",

	// 产品
	NoProductData: "No product data",
}
