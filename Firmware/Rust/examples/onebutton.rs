#![feature(used)]
#![no_std]

extern crate cortex_m;
extern crate bluepill_usbhid;
extern crate onebutton;

//use onebutton::{GPIOB, RCC};
//use cortex_m::interrupt;
use bluepill_usbhid::*;

fn main() {
    hal_init();
    system_clock_config();

    usb_init();
    const MOMO: &str = "momo ";
    let mut hid_send_data: [u8; 128] = [0; 128];
    let mut hid_cmd_data: [u8; 128] = [0; 128];
    let mut hid_send_len: usize = 0;
    let mut hid_cmd_len: usize = 5;
    hid_cmd_data[..5].clone_from_slice(MOMO.as_bytes());
    loop {
        /* copy the received data from C buffer */
        unsafe {
            if hid_recv_len > 0 {
                let l = hid_recv_len as usize;
                hid_cmd_data[hid_cmd_len..hid_cmd_len+l]
                    .clone_from_slice(&hid_recv_data[..l]);
                hid_cmd_len += l;
                hid_recv_len = 0;
            }
        }

        if hid_cmd_len > 0 && hid_cmd_data[hid_cmd_len - 1] == b'\n'
        {
            hid_send_data[hid_send_len..hid_send_len+hid_cmd_len]
                .clone_from_slice(&hid_cmd_data[..hid_cmd_len]);
            hid_send_len += hid_cmd_len;
            hid_cmd_len = 5;
        }
        
        if hid_send_len > 0 {
            while !hid_send(&mut hid_send_data, hid_send_len) {
                hal_delay(100);
            }
            hid_send_len = 0;
        }
    }
}