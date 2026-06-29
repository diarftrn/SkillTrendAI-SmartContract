// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;
contract SkillTrendAI {
    string public idSertifikat;
    string public namaPemilik;
    string public kompetensi;
    bool public statusValid;

    constructor(
        string memory _idSertifikat,
        string memory _namaPemilik,
        string memory _kompetensi
    ) {
        idSertifikat = _idSertifikat;
        namaPemilik = _namaPemilik;
        kompetensi = _kompetensi;
        statusValid = true;
    }
    function cekSertifikat() public view returns (string memory) {
        if (statusValid) {
            return "Sertifikat VALID";
        } else {
            return "Sertifikat TIDAK VALID";
        }
    }

    function ubahStatus(bool _statusBaru) public {
        statusValid = _statusBaru;
    }
}
