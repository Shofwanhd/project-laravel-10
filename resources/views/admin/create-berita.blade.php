@extends('admin.layout.main')
@section('title')
    Tambah Berita
@endsection
@section('content')
    <!-- DEBUG-VIEW START 1 APPPATH/Views/admin/berita/tambah.php -->
    <form action="http://compro-ci4.javawebmedia.co.id/admin/berita/tambah" method="post" accept-charset="utf-8"
        enctype="multipart/form-data">
        <input type="hidden" name="csrf_test_name" value="e7e342ae70b567793d3e92f3860bd16b">
        <div class="form-group row">
            <label class="col-md-2">Judul Berita</label>
            <div class="col-md-10">
                <input type="text" name="judul_berita" class="form-control" value="" required="">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Upload Gambar Berita</label>
            <div class="col-md-10">
                <input type="file" name="gambar" class="form-control" value="">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Kategori, Jenis &amp; Status</label>
            <div class="col-md-2">
                <select name="id_kategori" class="form-control">
                    <option value="6">
                        Kursus Web </option>
                    <option value="5">
                        Web Programming </option>
                    <option value="4">
                        Updates </option>
                    <option value="3">
                        Java Web Media </option>
                    <option value="2">
                        Berita </option>
                    <option value="1">
                        Web Design </option>
                </select>
                <small class="text-secondary">Kategori</small>
            </div>
            <div class="col-md-2">
                <select name="jenis_berita" class="form-control">
                    <option value="Berita">Berita</option>
                    <option value="Layanan">Layanan</option>
                    <option value="Profil">Profil</option>
                </select>
                <small class="text-secondary">Jenis konten</small>
            </div>
            <div class="col-md-2">
                <select name="status_berita" class="form-control">
                    <option value="Publish">Publish</option>
                    <option value="Draft">Draft</option>
                </select>
                <small class="text-secondary">Status publikasi</small>
            </div>
            <div class="col-md-2">
                <input type="text" name="icon" class="form-control" value="">
                <small class="text-secondary">Icon <a href="https://fontawesome.com/icons"
                        target="_blank">Fontawsome</a></small>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Tanggal dan jam Publikasi</label>
            <div class="col-md-4">
                <input type="text" name="tanggal_publish" class="form-control tanggal hasDatepicker" value="31-10-2023"
                    id="dp1698690164784">
                <small class="text-secondary">Format <strong>dd-mm-yyyy</strong>. Misal: 31-10-2023</small>
            </div>
            <div class="col-md-2">
                <input type="text" name="jam" class="form-control jam" value="01:22:44">
                <small class="text-secondary">Format <strong>HH:MM:SS</strong>. Misal: 01:22:44</small>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Ringkasan</label>
            <div class="col-md-10">
                <textarea name="ringkasan" class="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Isi Berita</label>
            <div class="col-md-10">
                <textarea name="isi" class="form-control konten" id="mce_0" style="display: none;" aria-hidden="true"></textarea>
                <div role="application" class="tox tox-tinymce" aria-disabled="false"
                    style="visibility: hidden; height: 200px;">
                    <div class="tox-editor-container">
                        <div data-alloy-vertical-dir="toptobottom" class="tox-editor-header">
                            <div role="menubar" data-alloy-tabstop="true" class="tox-menubar"><button aria-haspopup="true"
                                    role="menuitem" type="button" data-alloy-tabstop="true" unselectable="on"
                                    tabindex="-1" class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">File</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">Edit</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">View</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">Insert</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">Format</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">Tools</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">Table</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button><button aria-haspopup="true" role="menuitem" type="button"
                                    data-alloy-tabstop="true" unselectable="on" tabindex="-1"
                                    class="tox-mbtn tox-mbtn--select" aria-expanded="false"
                                    style="user-select: none;"><span class="tox-mbtn__select-label">Help</span>
                                    <div class="tox-mbtn__select-chevron"><svg width="10" height="10">
                                            <path
                                                d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                fill-rule="nonzero"></path>
                                        </svg></div>
                                </button></div>
                            <div role="group" class="tox-toolbar-overlord" aria-disabled="false">
                                <div role="group" class="tox-toolbar__primary">
                                    <div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1"
                                        class="tox-toolbar__group"><button aria-label="Undo" title="Undo"
                                            type="button" tabindex="-1" class="tox-tbtn tox-tbtn--disabled"
                                            aria-disabled="true"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M6.4 8H12c3.7 0 6.2 2 6.8 5.1.6 2.7-.4 5.6-2.3 6.8a1 1 0 01-1-1.8c1.1-.6 1.8-2.7 1.4-4.6-.5-2.1-2.1-3.5-4.9-3.5H6.4l3.3 3.3a1 1 0 11-1.4 1.4l-5-5a1 1 0 010-1.4l5-5a1 1 0 011.4 1.4L6.4 8z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span></button><button aria-label="Redo" title="Redo"
                                            type="button" tabindex="-1" class="tox-tbtn tox-tbtn--disabled"
                                            aria-disabled="true"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M17.6 10H12c-2.8 0-4.4 1.4-4.9 3.5-.4 2 .3 4 1.4 4.6a1 1 0 11-1 1.8c-2-1.2-2.9-4.1-2.3-6.8.6-3 3-5.1 6.8-5.1h5.6l-3.3-3.3a1 1 0 111.4-1.4l5 5a1 1 0 010 1.4l-5 5a1 1 0 01-1.4-1.4l3.3-3.3z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span></button></div>
                                    <div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1"
                                        class="tox-toolbar__group"><button title="Blocks" aria-label="Blocks"
                                            aria-haspopup="true" type="button" unselectable="on" tabindex="-1"
                                            class="tox-tbtn tox-tbtn--select tox-tbtn--bespoke" aria-expanded="false"
                                            style="user-select: none;"><span
                                                class="tox-tbtn__select-label">Paragraph</span>
                                            <div class="tox-tbtn__select-chevron"><svg width="10" height="10">
                                                    <path
                                                        d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                        fill-rule="nonzero"></path>
                                                </svg></div>
                                        </button></div>
                                    <div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1"
                                        class="tox-toolbar__group"><button aria-label="Bold" title="Bold"
                                            type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false"
                                            aria-pressed="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M7.8 19c-.3 0-.5 0-.6-.2l-.2-.5V5.7c0-.2 0-.4.2-.5l.6-.2h5c1.5 0 2.7.3 3.5 1 .7.6 1.1 1.4 1.1 2.5a3 3 0 01-.6 1.9c-.4.6-1 1-1.6 1.2.4.1.9.3 1.3.6s.8.7 1 1.2c.4.4.5 1 .5 1.6 0 1.3-.4 2.3-1.3 3-.8.7-2.1 1-3.8 1H7.8zm5-8.3c.6 0 1.2-.1 1.6-.5.4-.3.6-.7.6-1.3 0-1.1-.8-1.7-2.3-1.7H9.3v3.5h3.4zm.5 6c.7 0 1.3-.1 1.7-.4.4-.4.6-.9.6-1.5s-.2-1-.7-1.4c-.4-.3-1-.4-2-.4H9.4v3.8h4z"
                                                        fill-rule="evenodd"></path>
                                                </svg></span></button><button aria-label="Italic" title="Italic"
                                            type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false"
                                            aria-pressed="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M16.7 4.7l-.1.9h-.3c-.6 0-1 0-1.4.3-.3.3-.4.6-.5 1.1l-2.1 9.8v.6c0 .5.4.8 1.4.8h.2l-.2.8H8l.2-.8h.2c1.1 0 1.8-.5 2-1.5l2-9.8.1-.5c0-.6-.4-.8-1.4-.8h-.3l.2-.9h5.8z"
                                                        fill-rule="evenodd"></path>
                                                </svg></span></button><button aria-label="Strikethrough"
                                            title="Strikethrough" type="button" tabindex="-1" class="tox-tbtn"
                                            aria-disabled="false" aria-pressed="false"><span
                                                class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24">
                                                    <g fill-rule="evenodd">
                                                        <path
                                                            d="M15.6 8.5c-.5-.7-1-1.1-1.3-1.3-.6-.4-1.3-.6-2-.6-2.7 0-2.8 1.7-2.8 2.1 0 1.6 1.8 2 3.2 2.3 4.4.9 4.6 2.8 4.6 3.9 0 1.4-.7 4.1-5 4.1A6.2 6.2 0 017 16.4l1.5-1.1c.4.6 1.6 2 3.7 2 1.6 0 2.5-.4 3-1.2.4-.8.3-2-.8-2.6-.7-.4-1.6-.7-2.9-1-1-.2-3.9-.8-3.9-3.6C7.6 6 10.3 5 12.4 5c2.9 0 4.2 1.6 4.7 2.4l-1.5 1.1z">
                                                        </path>
                                                        <path d="M5 11h14a1 1 0 010 2H5a1 1 0 010-2z" fill-rule="nonzero">
                                                        </path>
                                                    </g>
                                                </svg></span></button>
                                        <div aria-pressed="false" aria-label="Text color" title="Text color"
                                            role="button" aria-haspopup="true" unselectable="on" tabindex="-1"
                                            class="tox-split-button" aria-disabled="false" aria-expanded="false"
                                            aria-describedby="aria_6059213032041698691053281" style="user-select: none;">
                                            <span role="presentation" tabindex="-1" class="tox-tbtn"
                                                aria-disabled="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                        width="24" height="24">
                                                        <g fill-rule="evenodd">
                                                            <path id="tox-icon-text-color__color" d="M3 18h18v3H3z"></path>
                                                            <path
                                                                d="M8.7 16h-.8a.5.5 0 01-.5-.6l2.7-9c.1-.3.3-.4.5-.4h2.8c.2 0 .4.1.5.4l2.7 9a.5.5 0 01-.5.6h-.8a.5.5 0 01-.4-.4l-.7-2.2c0-.3-.3-.4-.5-.4h-3.4c-.2 0-.4.1-.5.4l-.7 2.2c0 .3-.2.4-.4.4zm2.6-7.6l-.6 2a.5.5 0 00.5.6h1.6a.5.5 0 00.5-.6l-.6-2c0-.3-.3-.4-.5-.4h-.4c-.2 0-.4.1-.5.4z">
                                                            </path>
                                                        </g>
                                                    </svg></span></span><span role="presentation" tabindex="-1"
                                                class="tox-tbtn tox-split-button__chevron" aria-disabled="false"><svg
                                                    width="10" height="10">
                                                    <path
                                                        d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span><span aria-hidden="true" id="aria_6059213032041698691053281"
                                                style="display: none;">To open the popup, press Shift+Enter</span>
                                        </div>
                                        <div aria-pressed="false" aria-label="Background color" title="Background color"
                                            role="button" aria-haspopup="true" unselectable="on" tabindex="-1"
                                            class="tox-split-button" aria-disabled="false" aria-expanded="false"
                                            aria-describedby="aria_4272249502061698691053281" style="user-select: none;">
                                            <span role="presentation" tabindex="-1" class="tox-tbtn"
                                                aria-disabled="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                        width="24" height="24">
                                                        <g fill-rule="evenodd">
                                                            <path id="tox-icon-highlight-bg-color__color"
                                                                d="M3 18h18v3H3z"></path>
                                                            <path fill-rule="nonzero"
                                                                d="M7.7 16.7H3l3.3-3.3-.7-.8L10.2 8l4 4.1-4 4.2c-.2.2-.6.2-.8 0l-.6-.7-1.1 1.1zm5-7.5L11 7.4l3-2.9a2 2 0 012.6 0L18 6c.7.7.7 2 0 2.7l-2.9 2.9-1.8-1.8-.5-.6">
                                                            </path>
                                                        </g>
                                                    </svg></span></span><span role="presentation" tabindex="-1"
                                                class="tox-tbtn tox-split-button__chevron" aria-disabled="false"><svg
                                                    width="10" height="10">
                                                    <path
                                                        d="M8.7 2.2c.3-.3.8-.3 1 0 .4.4.4.9 0 1.2L5.7 7.8c-.3.3-.9.3-1.2 0L.2 3.4a.8.8 0 010-1.2c.3-.3.8-.3 1.1 0L5 6l3.7-3.8z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span><span aria-hidden="true" id="aria_4272249502061698691053281"
                                                style="display: none;">To open the popup, press Shift+Enter</span>
                                        </div>
                                    </div>
                                    <div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1"
                                        class="tox-toolbar__group"><button aria-label="Insert/edit link"
                                            title="Insert/edit link" type="button" tabindex="-1" class="tox-tbtn"
                                            aria-disabled="false" aria-pressed="false"><span
                                                class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24">
                                                    <path
                                                        d="M6.2 12.3a1 1 0 011.4 1.4l-2.1 2a2 2 0 102.7 2.8l4.8-4.8a1 1 0 000-1.4 1 1 0 111.4-1.3 2.9 2.9 0 010 4L9.6 20a3.9 3.9 0 01-5.5-5.5l2-2zm11.6-.6a1 1 0 01-1.4-1.4l2-2a2 2 0 10-2.6-2.8L11 10.3a1 1 0 000 1.4A1 1 0 119.6 13a2.9 2.9 0 010-4L14.4 4a3.9 3.9 0 015.5 5.5l-2 2z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span></button><button aria-label="Insert/edit image"
                                            title="Insert/edit image" type="button" tabindex="-1" class="tox-tbtn"
                                            aria-disabled="false" aria-pressed="false"><span
                                                class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24">
                                                    <path
                                                        d="M5 15.7l3.3-3.2c.3-.3.7-.3 1 0L12 15l4.1-4c.3-.4.8-.4 1 0l2 1.9V5H5v10.7zM5 18V19h3l2.8-2.9-2-2L5 17.9zm14-3l-2.5-2.4-6.4 6.5H19v-4zM4 3h16c.6 0 1 .4 1 1v16c0 .6-.4 1-1 1H4a1 1 0 01-1-1V4c0-.6.4-1 1-1zm6 8a2 2 0 100-4 2 2 0 000 4z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span></button></div>
                                    <div title="" role="toolbar" data-alloy-tabstop="true" tabindex="-1"
                                        class="tox-toolbar__group"><button aria-label="Align left" title="Align left"
                                            type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false"
                                            aria-pressed="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 4h8c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2zm0-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z"
                                                        fill-rule="evenodd"></path>
                                                </svg></span></button><button aria-label="Align center"
                                            title="Align center" type="button" tabindex="-1" class="tox-tbtn"
                                            aria-disabled="false" aria-pressed="false"><span
                                                class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24">
                                                    <path
                                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm3 4h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 110-2zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1H8a1 1 0 010-2zm-3-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z"
                                                        fill-rule="evenodd"></path>
                                                </svg></span></button><button aria-label="Align right" title="Align right"
                                            type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false"
                                            aria-pressed="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm6 4h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm0 8h8c.6 0 1 .4 1 1s-.4 1-1 1h-8a1 1 0 010-2zm-6-4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z"
                                                        fill-rule="evenodd"></path>
                                                </svg></span></button><button aria-label="Justify" title="Justify"
                                            type="button" tabindex="-1" class="tox-tbtn" aria-disabled="false"
                                            aria-pressed="false"><span class="tox-icon tox-tbtn__icon-wrap"><svg
                                                    width="24" height="24">
                                                    <path
                                                        d="M5 5h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 110-2zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2zm0 4h14c.6 0 1 .4 1 1s-.4 1-1 1H5a1 1 0 010-2z"
                                                        fill-rule="evenodd"></path>
                                                </svg></span></button></div>
                                    <div role="toolbar" data-alloy-tabstop="true" tabindex="-1"
                                        class="tox-toolbar__group"><button aria-label="More..." title="More..."
                                            aria-haspopup="true" type="button" data-alloy-tabstop="true" tabindex="-1"
                                            class="tox-tbtn" aria-expanded="false"><span
                                                class="tox-icon tox-tbtn__icon-wrap"><svg width="24" height="24">
                                                    <path
                                                        d="M6 10a2 2 0 00-2 2c0 1.1.9 2 2 2a2 2 0 002-2 2 2 0 00-2-2zm12 0a2 2 0 00-2 2c0 1.1.9 2 2 2a2 2 0 002-2 2 2 0 00-2-2zm-6 0a2 2 0 00-2 2c0 1.1.9 2 2 2a2 2 0 002-2 2 2 0 00-2-2z"
                                                        fill-rule="nonzero"></path>
                                                </svg></span></button></div>
                                </div>
                            </div>
                            <div class="tox-anchorbar"></div>
                        </div>
                        <div class="tox-sidebar-wrap">
                            <div class="tox-edit-area">
                                <iframe id="mce_0_ifr" frameborder="0" allowtransparency="true"
                                    title="Rich Text Area. Press ALT-0 for help." class="tox-edit-area__iframe">

                                </iframe>
                            </div>
                            <div role="complementary" class="tox-sidebar">
                                <div data-alloy-tabstop="true" tabindex="-1"
                                    class="tox-sidebar__slider tox-sidebar--sliding-closed" style="width: 0px;">
                                    <div class="tox-sidebar__pane-container"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tox-statusbar">
                        <div class="tox-statusbar__text-container">
                            <div role="navigation" data-alloy-tabstop="true" class="tox-statusbar__path"
                                aria-disabled="false">
                                <div role="button" data-index="0" tab-index="-1" aria-level="1" tabindex="-1"
                                    class="tox-statusbar__path-item" aria-disabled="false">p</div>
                            </div><button type="button" data-alloy-tabstop="true" tabindex="-1"
                                class="tox-statusbar__wordcount">0 words</button><span class="tox-statusbar__branding"><a
                                    href="https://www.tiny.cloud/?utm_campaign=editor_referral&amp;utm_medium=poweredby&amp;utm_source=tinymce&amp;utm_content=v5"
                                    rel="noopener" target="_blank" tabindex="-1" aria-label="Powered by Tiny">Powered
                                    by Tiny</a></span>
                        </div>
                        <div title="Resize" aria-hidden="true" class="tox-statusbar__resize-handle"><svg width="10"
                                height="10">
                                <g fill-rule="nonzero">
                                    <path
                                        d="M8.1 1.1A.5.5 0 119 2l-7 7A.5.5 0 111 8l7-7zM8.1 5.1A.5.5 0 119 6l-3 3A.5.5 0 115 8l3-3z">
                                    </path>
                                </g>
                            </svg></div>
                    </div>
                    <div aria-hidden="true" class="tox-throbber" style="display: none;"></div>
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2">Keyword Berita (untuk SEO Google)</label>
            <div class="col-md-10">
                <textarea name="keywords" class="form-control"></textarea>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-2"></label>
            <div class="col-md-10">
                <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
            </div>
        </div>

    </form>
@endsection
