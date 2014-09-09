################################################
#                 WARNING!                     #
# This file has been auto-generated by xdress. #
# Do not modify!!!                             #
#                                              #
#                                              #
#                    Come on, guys. I mean it! #
################################################
"""
"""
cimport stlcontainers
from libc.stdlib cimport free
from libcpp.map cimport map as cpp_map
from libcpp.string cimport string as std_string

import collections
import stlcontainers



cdef class Tally:
    """
    
    Attributes
    ----------
    rx2fluka (std::map< std::string, std::string >) :
    rx2mcnp5 (std::map< std::string, std::string >) :
    rx2mcnp6 (std::map< std::string, std::string >) :
    entity_type (std::string) : fundamental tally variables  the
        type of entity (volume,surface)
    entity_name (std::string) : the name of the entity (optional)
    particle_name (std::string) : particle name string
    tally_type (std::string) : type of tally flux or current
    tally_name (std::string) : name of the tally
    entity_id (int) : id number of the entity being tallied upon
    entity_size (double) : the physical size of the entity
    
    
    Methods
    -------
    Tally
    ~Tally
    fluka
    from_hdf5
    mcnp
    setup_alias
    write_hdf5
    
    Notes
    -----
    This class was defined in tally.h
    
    The class is found in the "pyne" namespace"""



    # constuctors
    def __cinit__(self, *args, **kwargs):
        self._inst = NULL
        self._free_inst = True

        # cached property defaults
        self._rx2fluka = None
        self._rx2mcnp5 = None
        self._rx2mcnp6 = None

    def _tally_tally_0(self, ):
        """Tally(self, )
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        
        
        Parameters
        ----------
        None
        
        Returns
        -------
        None
        
        ################################################################
        
        empty constructor   Constructor from passed in vars
        
        Parameters
        ----------
        entity_name : std::string
        
        entity_type : std::string
        
        entity_size : double
        
        entity : int
        
        particle_name : std::string
        
        type : std::string
        
        tally_name : std::string
        
        Returns
        -------
        None
        
        """
        self._inst = new cpp_tally.Tally()
    
    
    def _tally_tally_1(self, type, part_name, ent, ent_type, ent_name, tal_name='', size=0.0):
        """Tally(self, type, part_name, ent, ent_type, ent_name, tal_name='', size=0.0)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        
        
        Parameters
        ----------
        None
        
        Returns
        -------
        None
        
        ################################################################
        
        empty constructor   Constructor from passed in vars
        
        Parameters
        ----------
        entity_name : std::string
        
        entity_type : std::string
        
        entity_size : double
        
        entity : int
        
        particle_name : std::string
        
        type : std::string
        
        tally_name : std::string
        
        Returns
        -------
        None
        
        """
        cdef char * type_proxy
        cdef char * part_name_proxy
        cdef char * ent_type_proxy
        cdef char * ent_name_proxy
        cdef char * tal_name_proxy
        type_bytes = type.encode()
        part_name_bytes = part_name.encode()
        ent_type_bytes = ent_type.encode()
        ent_name_bytes = ent_name.encode()
        tal_name_bytes = tal_name.encode()
        self._inst = new cpp_tally.Tally(std_string(<char *> type_bytes), std_string(<char *> part_name_bytes), <int> ent, std_string(<char *> ent_type_bytes), std_string(<char *> ent_name_bytes), std_string(<char *> tal_name_bytes), <double> size)
    
    
    _tally_tally_0_argtypes = frozenset()
    _tally_tally_1_argtypes = frozenset(((0, str), (1, str), (2, int), (3, str), (4, str), (5, str), (6, float), ("type", str), ("part_name", str), ("ent", int), ("ent_type", str), ("ent_name", str), ("tal_name", str), ("size", float)))
    
    def __init__(self, *args, **kwargs):
        """Tally(self, type, part_name, ent, ent_type, ent_name, tal_name='', size=0.0)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        
        
        Parameters
        ----------
        None
        
        Returns
        -------
        None
        
        ################################################################
        
        empty constructor   Constructor from passed in vars
        
        Parameters
        ----------
        entity_name : std::string
        
        entity_type : std::string
        
        entity_size : double
        
        entity : int
        
        particle_name : std::string
        
        type : std::string
        
        tally_name : std::string
        
        Returns
        -------
        None
        
        """
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_tally_0_argtypes:
            self._tally_tally_0(*args, **kwargs)
            return
        if types <= self._tally_tally_1_argtypes:
            self._tally_tally_1(*args, **kwargs)
            return
        # duck-typed dispatch based on whatever works!
        try:
            self._tally_tally_0(*args, **kwargs)
            return
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            self._tally_tally_1(*args, **kwargs)
            return
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method __init__() could not be dispatched')
    
    def __dealloc__(self):
        if self._free_inst and self._inst is not NULL:
            free(self._inst)

    # attributes
    property entity_id:
        """no docstring for entity_id, please file a bug report!"""
        def __get__(self):
            return int((<cpp_tally.Tally *> self._inst).entity_id)
    
        def __set__(self, value):
            (<cpp_tally.Tally *> self._inst).entity_id = <int> value
    
    
    property entity_name:
        """no docstring for entity_name, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).entity_name.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).entity_name = std_string(<char *> value_bytes)
    
    
    property entity_size:
        """no docstring for entity_size, please file a bug report!"""
        def __get__(self):
            return float((<cpp_tally.Tally *> self._inst).entity_size)
    
        def __set__(self, value):
            (<cpp_tally.Tally *> self._inst).entity_size = <double> value
    
    
    property entity_type:
        """no docstring for entity_type, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).entity_type.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).entity_type = std_string(<char *> value_bytes)
    
    
    property particle_name:
        """no docstring for particle_name, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).particle_name.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).particle_name = std_string(<char *> value_bytes)
    
    
    property rx2fluka:
        """no docstring for rx2fluka, please file a bug report!"""
        def __get__(self):
            cdef stlcontainers._MapStrStr rx2fluka_proxy
            if self._rx2fluka is None:
                rx2fluka_proxy = stlcontainers.MapStrStr(False, False)
                rx2fluka_proxy.map_ptr = &(<cpp_tally.Tally *> self._inst).rx2fluka
                self._rx2fluka = rx2fluka_proxy
            return self._rx2fluka
    
        def __set__(self, value):
            cdef stlcontainers._MapStrStr value_proxy
            value_proxy = stlcontainers.MapStrStr(value, not isinstance(value, stlcontainers._MapStrStr))
            (<cpp_tally.Tally *> self._inst).rx2fluka = value_proxy.map_ptr[0]
            self._rx2fluka = None
    
    
    property rx2mcnp5:
        """no docstring for rx2mcnp5, please file a bug report!"""
        def __get__(self):
            cdef stlcontainers._MapStrStr rx2mcnp5_proxy
            if self._rx2mcnp5 is None:
                rx2mcnp5_proxy = stlcontainers.MapStrStr(False, False)
                rx2mcnp5_proxy.map_ptr = &(<cpp_tally.Tally *> self._inst).rx2mcnp5
                self._rx2mcnp5 = rx2mcnp5_proxy
            return self._rx2mcnp5
    
        def __set__(self, value):
            cdef stlcontainers._MapStrStr value_proxy
            value_proxy = stlcontainers.MapStrStr(value, not isinstance(value, stlcontainers._MapStrStr))
            (<cpp_tally.Tally *> self._inst).rx2mcnp5 = value_proxy.map_ptr[0]
            self._rx2mcnp5 = None
    
    
    property rx2mcnp6:
        """no docstring for rx2mcnp6, please file a bug report!"""
        def __get__(self):
            cdef stlcontainers._MapStrStr rx2mcnp6_proxy
            if self._rx2mcnp6 is None:
                rx2mcnp6_proxy = stlcontainers.MapStrStr(False, False)
                rx2mcnp6_proxy.map_ptr = &(<cpp_tally.Tally *> self._inst).rx2mcnp6
                self._rx2mcnp6 = rx2mcnp6_proxy
            return self._rx2mcnp6
    
        def __set__(self, value):
            cdef stlcontainers._MapStrStr value_proxy
            value_proxy = stlcontainers.MapStrStr(value, not isinstance(value, stlcontainers._MapStrStr))
            (<cpp_tally.Tally *> self._inst).rx2mcnp6 = value_proxy.map_ptr[0]
            self._rx2mcnp6 = None
    
    
    property tally_name:
        """no docstring for tally_name, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).tally_name.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).tally_name = std_string(<char *> value_bytes)
    
    
    property tally_type:
        """no docstring for tally_type, please file a bug report!"""
        def __get__(self):
            return bytes(<char *> (<cpp_tally.Tally *> self._inst).tally_type.c_str()).decode()
    
        def __set__(self, value):
            cdef char * value_proxy
            value_bytes = value.encode()
            (<cpp_tally.Tally *> self._inst).tally_type = std_string(<char *> value_bytes)
    
    
    # methods
    def fluka(self, unit_number='-21'):
        """fluka(self, unit_number='-21')
        
        
        Parameters
        ----------
        unit_number : std::string
        
        Returns
        -------
        res1 : std::string
        
        """
        cdef char * unit_number_proxy
        cdef std_string rtnval
        unit_number_bytes = unit_number.encode()
        rtnval = (<cpp_tally.Tally *> self._inst).fluka(std_string(<char *> unit_number_bytes))
        return bytes(<char *> rtnval.c_str()).decode()
    
    
    def _tally_from_hdf5_0(self, filename, datapath, row=-1):
        """from_hdf5(self, filename, datapath, row=-1)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Main read tally method
        
        Parameters
        ----------
        row : int
        
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Dummy read method wrapper around c style strings
        
        Parameters
        ----------
        row : int
        
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).from_hdf5(std_string(<char *> filename_bytes), std_string(<char *> datapath_bytes), <int> row)
    
    
    def _tally_from_hdf5_1(self, filename, datapath, row=-1):
        """from_hdf5(self, filename, datapath, row=-1)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Main read tally method
        
        Parameters
        ----------
        row : int
        
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Dummy read method wrapper around c style strings
        
        Parameters
        ----------
        row : int
        
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).from_hdf5(<char *> filename_bytes, <char *> datapath_bytes, <int> row)
    
    
    _tally_from_hdf5_0_argtypes = frozenset(((0, str), (1, str), (2, int), ("filename", str), ("datapath", str), ("row", int)))
    _tally_from_hdf5_1_argtypes = frozenset(((0, str), (1, str), (2, int), ("filename", str), ("datapath", str), ("row", int)))
    
    def from_hdf5(self, *args, **kwargs):
        """from_hdf5(self, filename, datapath, row=-1)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Main read tally method
        
        Parameters
        ----------
        row : int
        
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Dummy read method wrapper around c style strings
        
        Parameters
        ----------
        row : int
        
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        """
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_from_hdf5_0_argtypes:
            return self._tally_from_hdf5_0(*args, **kwargs)
        if types <= self._tally_from_hdf5_1_argtypes:
            return self._tally_from_hdf5_1(*args, **kwargs)
        # duck-typed dispatch based on whatever works!
        try:
            return self._tally_from_hdf5_0(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            return self._tally_from_hdf5_1(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method from_hdf5() could not be dispatched')
    
    def mcnp(self, tally_index, mcnp_version='mcnp5'):
        """mcnp(self, tally_index, mcnp_version='mcnp5')
        
        
        Parameters
        ----------
        tally_index : int
        
        mcnp_version : std::string
        
        Returns
        -------
        res1 : std::string
        
        """
        cdef char * mcnp_version_proxy
        cdef std_string rtnval
        mcnp_version_bytes = mcnp_version.encode()
        rtnval = (<cpp_tally.Tally *> self._inst).mcnp(<int> tally_index, std_string(<char *> mcnp_version_bytes))
        return bytes(<char *> rtnval.c_str()).decode()
    
    
    def setup_alias(self, ):
        """setup_alias(self, )
        default destructor
        
        Parameters
        ----------
        None
        
        Returns
        -------
        res1 : void
        
        """
        (<cpp_tally.Tally *> self._inst).setup_alias()
    
    
    def _tally_write_hdf5_0(self, filename, datapath):
        """write_hdf5(self, filename, datapath)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Dummy write method wrapper around c style strings
        
        Parameters
        ----------
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Main write tally method
        
        Parameters
        ----------
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).write_hdf5(std_string(<char *> filename_bytes), std_string(<char *> datapath_bytes))
    
    
    def _tally_write_hdf5_1(self, filename, datapath):
        """write_hdf5(self, filename, datapath)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Dummy write method wrapper around c style strings
        
        Parameters
        ----------
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Main write tally method
        
        Parameters
        ----------
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        """
        cdef char * filename_proxy
        cdef char * datapath_proxy
        filename_bytes = filename.encode()
        datapath_bytes = datapath.encode()
        (<cpp_tally.Tally *> self._inst).write_hdf5(<char *> filename_bytes, <char *> datapath_bytes)
    
    
    _tally_write_hdf5_0_argtypes = frozenset(((0, str), (1, str), ("filename", str), ("datapath", str)))
    _tally_write_hdf5_1_argtypes = frozenset(((0, str), (1, str), ("filename", str), ("datapath", str)))
    
    def write_hdf5(self, *args, **kwargs):
        """write_hdf5(self, filename, datapath)
         This method was overloaded in the C-based source. To overcome
        this we ill put the relevant docstring for each version below.
        Each version will begin with a line of # characters.
        
        Dummy write method wrapper around c style strings
        
        Parameters
        ----------
        datapath : char *
        
        filename : char *
        
        Returns
        -------
        res1 : void
        
        ################################################################
        
        Main write tally method
        
        Parameters
        ----------
        datapath : std::string
        
        filename : std::string
        
        Returns
        -------
        res1 : void
        
        """
        types = set([(i, type(a)) for i, a in enumerate(args)])
        types.update([(k, type(v)) for k, v in kwargs.items()])
        # vtable-like dispatch for exactly matching types
        if types <= self._tally_write_hdf5_0_argtypes:
            return self._tally_write_hdf5_0(*args, **kwargs)
        if types <= self._tally_write_hdf5_1_argtypes:
            return self._tally_write_hdf5_1(*args, **kwargs)
        # duck-typed dispatch based on whatever works!
        try:
            return self._tally_write_hdf5_0(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        try:
            return self._tally_write_hdf5_1(*args, **kwargs)
        except (RuntimeError, TypeError, NameError):
            pass
        raise RuntimeError('method write_hdf5() could not be dispatched')
    
    

    pass






{'cpppxd_footer': '', 'pyx_header': '', 'pxd_header': '', 'pxd_footer': '', 'cpppxd_header': '', 'pyx_footer': ''}
