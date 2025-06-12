package android.app.src.main.java.com.ttpos.app.utils;

/* loaded from: classes.dex */
public class Nodes {
    public static boolean isNodeUnknownString(String str) {
        return str.equals(Values.STRING_UNKNOWN);
    }

    public static boolean isNodeNotSupportString(String str) {
        return str.equals(Values.STRING_NOT_SUPPORT);
    }

    public static boolean isNodeAbnormalString(String str) {
        return isNodeUnknownString(str) || isNodeNotSupportString(str);
    }

    public static String getUSBPort(int i) {
        String machineNodesValue;
        if (1 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort1");
        } else if (2 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort2");
        } else if (3 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort3");
        } else if (4 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort4");
        } else if (5 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort5");
        } else if (6 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort6");
        } else if (7 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort7");
        } else if (8 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort8");
        } else if (9 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("USB", "USBPort9");
        } else {
            machineNodesValue = 10 == i ? NodesXml.getMachineNodesValue("USB", "USBPort10") : "";
        }
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getCashBox1() {
        String machineNodesValue = NodesXml.getMachineNodesValue("CashBox", "CashBox1");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getCashBox2() {
        String machineNodesValue = NodesXml.getMachineNodesValue("CashBox", "CashBox2");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getCashBox3() {
        String machineNodesValue = NodesXml.getMachineNodesValue("CashBox", "CashBox3");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getCashBoxVol() {
        String machineNodesValue = NodesXml.getMachineNodesValue("CashBox", "CashBoxVol");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getSpeakInternalConfig() {
        String machineNodesValue = NodesXml.getMachineNodesValue("Speak", "SpeakInternal");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getSpeakExternalConfig() {
        String machineNodesValue = NodesXml.getMachineNodesValue("Speak", "SpeakExternal");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getUartPort(int i) {
        String machineNodesValue;
        if (1 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("UART", "UARTPort1");
        } else if (2 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("UART", "UARTPort2");
        } else if (3 == i) {
            machineNodesValue = NodesXml.getMachineNodesValue("UART", "UARTPort3");
        } else {
            machineNodesValue = 4 == i ? NodesXml.getMachineNodesValue("UART", "UARTPort4") : "";
        }
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getSDCardPath() {
        String machineNodesValue = NodesXml.getMachineNodesValue("SDCard", "SDCard");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getRecoveryADCPath() {
        String machineNodesValue = NodesXml.getMachineNodesValue("RecoveryKey", "RecoveryADC");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getRecoveryIOPath() {
        String machineNodesValue = NodesXml.getMachineNodesValue("RecoveryKey", "RecoveryIO");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getMCUTTYDevice() {
        String machineNodesValue = NodesXml.getMachineNodesValue("MCU", "MCUTTY");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getScannerTTYDevice() throws Throwable {
        String machineNodesValue;
        String str = Values.STRING_NOT_SUPPORT;
        if ("1".equals(Util.getInfoByPath("/sys/class/misc/rk_cmdline/device/scanner_tty"))) {
            machineNodesValue = NodesXml.getMachineNodesValue("Scanner", "ScannerTTY1");
        } else {
            machineNodesValue = NodesXml.getMachineNodesValue("Scanner", "ScannerTTY");
        }
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getScannerLedTrigger() {
        String machineNodesValue = NodesXml.getMachineNodesValue("Scanner", "ScannerLedTrigger");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getScannerLedFlickerPath() {
        String machineNodesValue = NodesXml.getMachineNodesValue("Scanner", "ScannerLedFlickerPath");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }

    public static String getOutGpio1() {
        String machineNodesValue = NodesXml.getMachineNodesValue("OutGpio", "OutputGpio1");
        return !isNodeAbnormalString(machineNodesValue) ? machineNodesValue : Values.STRING_NOT_SUPPORT;
    }
}
