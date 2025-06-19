import { home } from "../elements/home";
import { getText } from "../actions";

export default {
    verifySuccessMsg(expectedTxt) {
        getText(home.toastSuccess, expectedTxt)
    }
}