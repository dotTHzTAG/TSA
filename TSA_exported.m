classdef TSA_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        TerahertzSpectrumAnalyzerUIFigure  matlab.ui.Figure
        SAVEDATAButton                  matlab.ui.control.Button
        CLEARMEMORYButton               matlab.ui.control.Button
        DEBUGMsgLabel                   matlab.ui.control.Label
        SystemStatusLabel               matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        TimeDomainTab                   matlab.ui.container.Tab
        JETCOLORMAPButton               matlab.ui.control.StateButton
        LEGENDButton_2                  matlab.ui.control.StateButton
        PLOTREFRACTIVEINDICESButton     matlab.ui.control.Button
        PLOTTHICKNESSESButton           matlab.ui.control.Button
        LoadData_TD                     matlab.ui.control.Button
        SaveData_TD                     matlab.ui.control.Button
        ASSIGNButtonTD                  matlab.ui.control.Button
        ButtonGroupTD                   matlab.ui.container.ButtonGroup
        BothButtonTD                    matlab.ui.control.RadioButton
        SampleButtonTD                  matlab.ui.control.RadioButton
        ReferenceButtonTD               matlab.ui.control.RadioButton
        MeasurementSettingsPanel        matlab.ui.container.Panel
        ScanTimeEditField               matlab.ui.control.EditField
        ScanTimeEditFieldLabel          matlab.ui.control.Label
        DescriptionEditField            matlab.ui.control.EditField
        DescriptionEditFieldLabel       matlab.ui.control.Label
        SampleDetailsPanel              matlab.ui.container.Panel
        FINDTHICKNESSButton             matlab.ui.control.Button
        RefractiveIndexEditField        matlab.ui.control.NumericEditField
        RefractiveIndexEditFieldLabel   matlab.ui.control.Label
        streflectionEditField           matlab.ui.control.NumericEditField
        streflectionEditFieldLabel      matlab.ui.control.Label
        delta_tEditField                matlab.ui.control.NumericEditField
        delta_tEditFieldLabel           matlab.ui.control.Label
        ThicknessEditField              matlab.ui.control.NumericEditField
        ThicknessEditFieldLabel         matlab.ui.control.Label
        psLabel_3                       matlab.ui.control.Label
        psLabel_2                       matlab.ui.control.Label
        mmLabel                         matlab.ui.control.Label
        ALLButton                       matlab.ui.control.Button
        PLOT2TDButton                   matlab.ui.control.Button
        FFTSettingsPanel                matlab.ui.container.Panel
        SpectralResolutionTHzLabel      matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        MinTimeEditField                matlab.ui.control.NumericEditField
        MinTimeEditFieldLabel           matlab.ui.control.Label
        psLabel_4                       matlab.ui.control.Label
        WindowFunctionLabel             matlab.ui.control.Label
        FFTUpsamplingLabel              matlab.ui.control.Label
        FrequencyrangeLabel             matlab.ui.control.Label
        AUTOWINDOWButton                matlab.ui.control.StateButton
        orLabel                         matlab.ui.control.Label
        ZeroFillingpowerofSpinner       matlab.ui.control.Spinner
        ZeroFillingpowerofSpinnerLabel  matlab.ui.control.Label
        ApodizationFunctionDropDown     matlab.ui.control.DropDown
        ApodizationFunctionDropDownLabel  matlab.ui.control.Label
        TRANSFORMButton                 matlab.ui.control.Button
        at1stinternalreflectionsLabel   matlab.ui.control.Label
        MaxTimeEditField                matlab.ui.control.NumericEditField
        MaxTimeLabel                    matlab.ui.control.Label
        THzLabel_4                      matlab.ui.control.Label
        MaxFreqEditField                matlab.ui.control.NumericEditField
        MaxFreqEditFieldLabel           matlab.ui.control.Label
        MinFreqEditField                matlab.ui.control.NumericEditField
        MinFreqEditFieldLabel           matlab.ui.control.Label
        PLOT1TDButton                   matlab.ui.control.Button
        SelectionListBox                matlab.ui.control.ListBox
        SelectionListBoxLabel           matlab.ui.control.Label
        DELButton                       matlab.ui.control.Button
        ADDButton                       matlab.ui.control.Button
        MeasurementListBox              matlab.ui.control.ListBox
        MeasurementListBoxLabel         matlab.ui.control.Label
        UIAxes1                         matlab.ui.control.UIAxes
        UIAxes2                         matlab.ui.control.UIAxes
        FrequencyDomainTab              matlab.ui.container.Tab
        curveFittingButton              matlab.ui.control.Button
        dataManipulationButton          matlab.ui.control.Button
        FDDatatoLabel                   matlab.ui.control.Label
        JETCOLORMAPButton_2             matlab.ui.control.StateButton
        LEGENDButton                    matlab.ui.control.StateButton
        optimisationButton              matlab.ui.control.Button
        LoadData_FD                     matlab.ui.control.Button
        SaveData_FD                     matlab.ui.control.Button
        MagPhaseButtonGroup             matlab.ui.container.ButtonGroup
        PhaseButton                     matlab.ui.control.RadioButton
        AmplitudeButton                 matlab.ui.control.RadioButton
        YscaleButtonGroup               matlab.ui.container.ButtonGroup
        linearButton                    matlab.ui.control.RadioButton
        logButton                       matlab.ui.control.RadioButton
        FDDataAnalysisPanel             matlab.ui.container.Panel
        RealImagButtonGroup             matlab.ui.container.ButtonGroup
        ImaginaryButton                 matlab.ui.control.RadioButton
        RealButton                      matlab.ui.control.RadioButton
        PLOTNEWFDButton                 matlab.ui.control.Button
        BANDWIDTHFILTERButton           matlab.ui.control.Button
        YscaleButtonGroup_2             matlab.ui.container.ButtonGroup
        linearButton_2                  matlab.ui.control.RadioButton
        logButton_2                     matlab.ui.control.RadioButton
        PlotDataButtonGroup             matlab.ui.container.ButtonGroup
        DIELECTRICCONSTANTButton        matlab.ui.control.ToggleButton
        REFRACTIVEINDEXButton           matlab.ui.control.ToggleButton
        ABSORPTIONButton                matlab.ui.control.ToggleButton
        TRANSMITTANCEButton             matlab.ui.control.ToggleButton
        FDSelectionListBox_2            matlab.ui.control.ListBox
        FDSelectionListBox_2Label       matlab.ui.control.Label
        CALCULATEButton                 matlab.ui.control.Button
        NumberofMultipleReflectionsPanel  matlab.ui.container.Panel
        SampleNMREditField              matlab.ui.control.NumericEditField
        SampleEditField_2Label          matlab.ui.control.Label
        RefNMREditField                 matlab.ui.control.NumericEditField
        RefEditField_2Label             matlab.ui.control.Label
        ThicknessmmPanel                matlab.ui.container.Panel
        SampleEditField                 matlab.ui.control.NumericEditField
        SampleEditFieldLabel            matlab.ui.control.Label
        RefEditField                    matlab.ui.control.NumericEditField
        RefEditFieldLabel               matlab.ui.control.Label
        DescriptionEditField_FD         matlab.ui.control.EditField
        DescriptionEditField_2Label     matlab.ui.control.Label
        DELFDButton_2                   matlab.ui.control.Button
        ADDFDButton_2                   matlab.ui.control.Button
        ALLFDButton_2                   matlab.ui.control.Button
        MagPhaseButtonGroup_2           matlab.ui.container.ButtonGroup
        PhaseButton_2                   matlab.ui.control.RadioButton
        AmplitudeButton_2               matlab.ui.control.RadioButton
        PLOT2FDButton_2                 matlab.ui.control.Button
        PLOT1FDButton_2                 matlab.ui.control.Button
        ASSIGNButtonFD                  matlab.ui.control.Button
        REMOVEALLButton                 matlab.ui.control.Button
        REMOVEButton                    matlab.ui.control.Button
        ButtonGroupFD                   matlab.ui.container.ButtonGroup
        BothButtonFD                    matlab.ui.control.RadioButton
        SampleButtonFD                  matlab.ui.control.RadioButton
        ReferenceButtonFD               matlab.ui.control.RadioButton
        FDSelectionListBox              matlab.ui.control.ListBox
        FDSelectionListBoxLabel         matlab.ui.control.Label
        DELFDButton                     matlab.ui.control.Button
        ADDFDButton                     matlab.ui.control.Button
        ALLFDButton                     matlab.ui.control.Button
        FDListListBox                   matlab.ui.control.ListBox
        FDListListBoxLabel              matlab.ui.control.Label
        PLOT2FDButton                   matlab.ui.control.Button
        PLOT1FDButton                   matlab.ui.control.Button
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes3                         matlab.ui.control.UIAxes
        OptimisationTab                 matlab.ui.container.Tab
        OPTIMIZEALLButton               matlab.ui.control.Button
        COMPARECASE1AND2Button          matlab.ui.control.Button
        RESETOP_DATAButton              matlab.ui.control.Button
        ASSIGNButtonOP                  matlab.ui.control.Button
        OPTIMIZEALLPanel                matlab.ui.container.Panel
        CURVEFITTINGButton              matlab.ui.control.Button
        DATAMANIPULATIONButton          matlab.ui.control.Button
        PlotDropDown                    matlab.ui.control.DropDown
        PlotDropDownLabel               matlab.ui.control.Label
        SampleCaseDropDown              matlab.ui.control.DropDown
        SampleCaseDropDownLabel         matlab.ui.control.Label
        FITCASE1Button                  matlab.ui.control.Button
        FITCASE2Button                  matlab.ui.control.Button
        InputDataPanel                  matlab.ui.container.Panel
        NumberofMulitipleReflectionsPanel_3  matlab.ui.container.Panel
        case2SampleetlNumEditField      matlab.ui.control.NumericEditField
        SampleEditField_2Label_4        matlab.ui.control.Label
        case2RefetlNumEditField         matlab.ui.control.NumericEditField
        RefEditField_2Label_4           matlab.ui.control.Label
        ThicknessmmPanel_3              matlab.ui.container.Panel
        case2SampleTEditField           matlab.ui.control.NumericEditField
        SampleEditField_4Label          matlab.ui.control.Label
        case2RefTEditField              matlab.ui.control.NumericEditField
        RefEditField_4Label             matlab.ui.control.Label
        case2DescriptionEditField       matlab.ui.control.EditField
        DescriptionEditField_2Label_3   matlab.ui.control.Label
        SampleCase2DropDown             matlab.ui.control.DropDown
        SampleCase2DropDownLabel        matlab.ui.control.Label
        NumberofMulitipleReflectionsPanel_2  matlab.ui.container.Panel
        case1SampleetlNumEditField      matlab.ui.control.NumericEditField
        SampleEditField_2Label_3        matlab.ui.control.Label
        case1RefetlNumEditField         matlab.ui.control.NumericEditField
        RefEditField_2Label_3           matlab.ui.control.Label
        case1DescriptionEditField       matlab.ui.control.EditField
        DescriptionEditField_2Label_2   matlab.ui.control.Label
        ThicknessmmPanel_2              matlab.ui.container.Panel
        case1SampleTEditField           matlab.ui.control.NumericEditField
        SampleEditField_2Label_2        matlab.ui.control.Label
        case1RefTEditField              matlab.ui.control.NumericEditField
        RefEditField_2Label_2           matlab.ui.control.Label
        SampleCase1DropDown             matlab.ui.control.DropDown
        SampleCase1Label                matlab.ui.control.Label
        FittingParameterstoOpticalParameterExtractionTheoryLabel  matlab.ui.control.Label
        UIAxes8                         matlab.ui.control.UIAxes
        UIAxes7                         matlab.ui.control.UIAxes
        UIAxes6                         matlab.ui.control.UIAxes
        UIAxes5                         matlab.ui.control.UIAxes
        DataManipulationTab             matlab.ui.container.Tab
        JETCOLORMAPButton_DM            matlab.ui.control.StateButton
        DMTabGroup                      matlab.ui.container.TabGroup
        FrequencyBaseTab                matlab.ui.container.Tab
        ANALYSERButton                  matlab.ui.control.Button
        MeasurementEditField            matlab.ui.control.EditField
        MeasurementEditFieldLabel       matlab.ui.control.Label
        YLabelEditField                 matlab.ui.control.EditField
        YLabelEditFieldLabel            matlab.ui.control.Label
        XLabelEditField                 matlab.ui.control.EditField
        XLabelEditFieldLabel            matlab.ui.control.Label
        YaxisDataEditField_2            matlab.ui.control.EditField
        YaxisDataEditField_2Label       matlab.ui.control.Label
        GetDatafromFrequencyTHzEditField  matlab.ui.control.EditField
        GetDatafromFrequencyTHzEditFieldLabel  matlab.ui.control.Label
        XaxisDataEditField              matlab.ui.control.EditField
        XaxisDataEditFieldLabel         matlab.ui.control.Label
        PLOT2Button                     matlab.ui.control.Button
        REARRANGEDATAButton             matlab.ui.control.Button
        DISPLAYXLINESButton             matlab.ui.control.Button
        PeakBaseTab                     matlab.ui.container.Tab
        MinPeakProminenceEditField      matlab.ui.control.NumericEditField
        MinPeakProminenceEditFieldLabel  matlab.ui.control.Label
        MeasurementEditField_2          matlab.ui.control.EditField
        MeasurementEditField_2Label     matlab.ui.control.Label
        YLabelEditField_2               matlab.ui.control.EditField
        YLabelEditField_2Label          matlab.ui.control.Label
        XLabelEditField_2               matlab.ui.control.EditField
        XLabelEditField_2Label          matlab.ui.control.Label
        YaxisDataEditField_3            matlab.ui.control.EditField
        YaxisDataEditField_3Label       matlab.ui.control.Label
        XaxisDataEditField_2            matlab.ui.control.EditField
        XaxisDataEditField_2Label       matlab.ui.control.Label
        LowerLimitTHzEditField          matlab.ui.control.NumericEditField
        LowerLimitTHzEditFieldLabel     matlab.ui.control.Label
        PeakNumSpinner                  matlab.ui.control.Spinner
        PeakNumSpinnerLabel             matlab.ui.control.Label
        PLOTNEWButton_3                 matlab.ui.control.Button
        PLOT2Button_2                   matlab.ui.control.Button
        REARRANGEDATAButton_2           matlab.ui.control.Button
        SaveData_DM                     matlab.ui.control.Button
        ASSIGNButtonDM                  matlab.ui.control.Button
        STEP1Panel                      matlab.ui.container.Panel
        RANGEPLOTButton                 matlab.ui.control.Button
        DPlotFrequencyxaxisPanel        matlab.ui.container.Panel
        DplotdoesnotsupportthebelowextractingfunctionLabel  matlab.ui.control.Label
        data3DDropDown                  matlab.ui.control.DropDown
        dataDropDownLabel               matlab.ui.control.Label
        PLOT1_3DButton                  matlab.ui.control.Button
        exABABCetcLabel                 matlab.ui.control.Label
        NumberofDataEditField           matlab.ui.control.NumericEditField
        NumberofDataEditFieldLabel      matlab.ui.control.Label
        AvailableDataSetEditField       matlab.ui.control.EditField
        AvailableDataSetEditFieldLabel  matlab.ui.control.Label
        ALLDATAButton                   matlab.ui.control.Button
        CALCULATEButton_2               matlab.ui.control.Button
        CDropDown                       matlab.ui.control.DropDown
        CDropDownLabel                  matlab.ui.control.Label
        BDropDown                       matlab.ui.control.DropDown
        BDropDownLabel                  matlab.ui.control.Label
        PLOT1Button                     matlab.ui.control.Button
        YaxisDataEditField              matlab.ui.control.EditField
        YaxisDataEditFieldLabel         matlab.ui.control.Label
        XaxisDataDropDown               matlab.ui.control.DropDown
        XaxisDataDropDownLabel          matlab.ui.control.Label
        VaribleDefinitionLabel          matlab.ui.control.Label
        ADropDown                       matlab.ui.control.DropDown
        ADropDownLabel                  matlab.ui.control.Label
        SourceDataSetEditField          matlab.ui.control.EditField
        SourceDataSetEditFieldLabel     matlab.ui.control.Label
        UIAxes10                        matlab.ui.control.UIAxes
        UIAxes9                         matlab.ui.control.UIAxes
        CurveFittingTab                 matlab.ui.container.Tab
        LOADDATA_CFButton               matlab.ui.control.Button
        CurveFittingFcnPanel            matlab.ui.container.Panel
        FitFcnEditField                 matlab.ui.control.EditField
        FitFcnEditFieldLabel            matlab.ui.control.Label
        LOADFITFCNButton                matlab.ui.control.Button
        XandYDATAASSIGNButton           matlab.ui.control.Button
        PLOTPanel                       matlab.ui.container.Panel
        DATAANALYSISButton              matlab.ui.control.Button
        PLOTButton                      matlab.ui.control.Button
        yaxisdataDropDown               matlab.ui.control.DropDown
        yaxisdataDropDownLabel          matlab.ui.control.Label
        xaxisdataDropDown               matlab.ui.control.DropDown
        xaxisdataDropDownLabel          matlab.ui.control.Label
        ORDERFRACTIONLorentziancurvesPanel  matlab.ui.container.Panel
        StartatDropDown                 matlab.ui.control.DropDown
        StartatDropDownLabel            matlab.ui.control.Label
        PeakNumberDropDown              matlab.ui.control.DropDown
        PeakNumberDropDownLabel         matlab.ui.control.Label
        AUTOCURVEFITButton              matlab.ui.control.Button
        TabGroup2                       matlab.ui.container.TabGroup
        PEAK1Tab                        matlab.ui.container.Tab
        UpperboundaryEditField          matlab.ui.control.NumericEditField
        UpperboundaryEditFieldLabel     matlab.ui.control.Label
        LowerboundaryEditField          matlab.ui.control.NumericEditField
        LowerboundaryEditFieldLabel     matlab.ui.control.Label
        PeakMinprominenceSlider         matlab.ui.control.Slider
        PeakMinprominenceSliderLabel    matlab.ui.control.Label
        CURVEFITButton                  matlab.ui.control.Button
        PeakMinPromEditField            matlab.ui.control.NumericEditField
        PEAK2Tab                        matlab.ui.container.Tab
        CURVEFITButton_2                matlab.ui.control.Button
        UpperboundaryEditField_2        matlab.ui.control.NumericEditField
        UpperboundaryEditField_2Label   matlab.ui.control.Label
        LowerboundaryEditField_2        matlab.ui.control.NumericEditField
        LowerboundaryEditField_2Label   matlab.ui.control.Label
        PeakMinPromEditField_2          matlab.ui.control.NumericEditField
        PeakMinprominenceSlider_2       matlab.ui.control.Slider
        PeakMinprominenceSlider_2Label  matlab.ui.control.Label
        PEAK3Tab                        matlab.ui.container.Tab
        CURVEFITButton_3                matlab.ui.control.Button
        UpperboundaryEditField_3        matlab.ui.control.NumericEditField
        UpperboundaryEditField_3Label   matlab.ui.control.Label
        LowerboundaryEditField_3        matlab.ui.control.NumericEditField
        LowerboundaryEditField_3Label   matlab.ui.control.Label
        PeakMinPromEditField_3          matlab.ui.control.NumericEditField
        PeakMinprominenceSlider_3       matlab.ui.control.Slider
        PeakMinprominenceSlider_3Label  matlab.ui.control.Label
        DISORDERFRACTIONpowerlaworlorentziancurvePanel  matlab.ui.container.Panel
        IterationEditField              matlab.ui.control.NumericEditField
        IterationEditFieldLabel         matlab.ui.control.Label
        BASELINEFITButton               matlab.ui.control.Button
        AlgorithmDropDown               matlab.ui.control.DropDown
        AlgorithmDropDownLabel          matlab.ui.control.Label
        UITable                         matlab.ui.control.Table
        SaveData_CF                     matlab.ui.control.Button
        ASSIGNButtonDM_2                matlab.ui.control.Button
        PLOTALLButton                   matlab.ui.control.Button
        CFydataDropDown                 matlab.ui.control.DropDown
        DataTypeLabel                   matlab.ui.control.Label
        UIAxes12                        matlab.ui.control.UIAxes
        UIAxes11                        matlab.ui.control.UIAxes
        UIAxes13                        matlab.ui.control.UIAxes
        EXTRACTDATAButton               matlab.ui.control.Button
        FILESEditField                  matlab.ui.control.EditField
        FILESEditFieldLabel             matlab.ui.control.Label
        IMPORTPROJECTButton             matlab.ui.control.Button
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% version description %%
%% 1.0
%% 1.1 revised on 11/03/2022, 18:00 edited by Jongmin Lee
%%     1) readH5File(external M script function)  -> readProject(internal function)
%%     2) sampling frequency correction
%%
%%
%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    properties (Access = public)
        fullpathname % Terapulse project file name and folder information
        filename % Terapulse project file name
        TD_data %time domain data extracted from HDF5 project file
        TD_select %time domain measurment selection
        TD_config % TD to FD transformation configuration
        FD_data %frequency data transfered through DFT
        FD_select
        FD_select_2
        FD_config
        DM_count % the number of data manipulation data
        DM_data % data manipluation data
        DM_peaks % data MAnipulation peaks 
        CF_select % Curve Ftting List
        CF_data % curve fitting related data
        PRJ_count % the number of project files imported
        OP_data % optimisation data
    end
    
    properties (Access = private)
        DialogApp % Dialog box app
    end
    
    methods (Access = private)
        
        function TDanalysisUpdate(app,TDindex)
            thickness = app.TD_data.metadata.thickness{TDindex};
            delta_t = app.TD_data.analysis{TDindex}(3);
            
            % recalculate
            if ~isequal(thickness,0)
                n_eff = round((delta_t*10^-12*3e8/(thickness*10^-3) + 1)*1000)/1000;
                etl_t = delta_t + 2*thickness*10^-3*n_eff/3e8*10^12;
            else
                n_eff = 0;
                mtpRelection = 0;
            end

            
            % update information
            app.TD_data.analysis{TDindex}(4) = n_eff;
            app.TD_data.analysis{TDindex}(5) = etl_t;
            
            % display update
            app.RefractiveIndexEditField.Value = n_eff;
            app.streflectionEditField.Value = etl_t;
        end
        
        function FDdataDel(app,FDindex)
            app.FD_data.sampleNameList(FDindex) = [];
            app.FD_data.settings(FDindex) = [];
            app.FD_data.frequency(FDindex) = [];
            app.FD_data.references(FDindex) = [];
            app.FD_data.samples(FDindex) = [];
            app.FD_data.ref_amplitude(FDindex) = [];
            app.FD_data.ref_phase(FDindex) = [];
            app.FD_data.sam_amplitude(FDindex) = [];
            app.FD_data.sam_phase(FDindex) = [];
            app.FD_data.transmit_amplitude(FDindex) = [];
            app.FD_data.transmit_phase(FDindex) = [];
            
            if isfield(app.FD_data,'absorbtions')
               app.FD_data.absorption(FDindex) = [];
                app.FD_data.refractiveIndex(FDindex) = [];
                app.FD_data.eReal(FDindex) = [];
                app.FD_data.eImag(FDindex) = [];
                app.FD_data.stopBand(FDindex) = [];   
            end
             
       
            
            if ~isempty(app.FD_data.meta)
                app.FD_data.meta.TDanalysis(FDindex) = [];
                app.FD_data.meta.thickness(FDindex) = [];
                app.FD_data.meta.refThickness(FDindex) = [];
                app.FD_data.meta.description(FDindex) = [];
                app.FD_data.meta.timeRange(FDindex) = [];
            end
            
        end
        
        function TDdataDel(app)
            app.TD_data = [];
            app.MeasurementListBox.Items(:) = [];
            app.SelectionListBox.Items(:) = [];
        end
        
        function CFdataDel(app)
            app.CF_data = [];
        end
        
        function plotTD_data(app,axesNum)
            
            plotList = app.TD_select;
            plotType = app.ButtonGroupTD.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            ax = axesNum;
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton_2.Value = 0;
            app.JETCOLORMAPButton.Value = 0;
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            colorNum = length(plotList);
            
            if isequal(plotType,'Both')
                colorNum = colorNum * 2;
            end
            
            for idx = plotList
                td_base = app.TD_data.references{idx,1};
                td_reference = app.TD_data.references{idx,2};
                td_sample = app.TD_data.samples{idx,2};
                sampleID = strjoin(app.TD_data.sampleNameList{idx});
                
                switch plotType
                    case 'Sample'
                      plot(ax,td_base,td_sample,'linewidth',1);
                      lgd{cnt} = sampleID;
                      cnt = cnt + 1;
                    case 'Reference'
                      plot(ax,td_base,td_reference,'linewidth',1);
                    otherwise
                      plot(ax,td_base,td_reference,td_base,td_sample,...
                          'linewidth',1);
                end
            end
            
            if isequal(plotType,'Sample')
                legend(ax,(lgd),'Interpreter','none');
            end
            ax.ColorOrder = lines(colorNum);
            hold(ax,"off")
            
        end
        
        function plotFD_data(app,axesNum)
            plotList = app.FD_select;
            plotType = app.ButtonGroupFD.SelectedObject.Text;
            plotInfo = app.MagPhaseButtonGroup.SelectedObject.Text;
            Yscale = app.YscaleButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            ax = axesNum;
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            ax.YScale = (Yscale);
            ax.ColorOrder = lines(length(plotList));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
            
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleNameList{idx};
                
                if isequal(plotInfo,'Amplitude')
                    fd_reference = app.FD_data.ref_amplitude{idx};
                    fd_sample = app.FD_data.sam_amplitude{idx};
                    ylabel(ax,'E_{field intensity} (a.u.)');
                    title(ax,'Amplitude')
                else
                    fd_reference = app.FD_data.ref_phase{idx};
                    fd_sample = app.FD_data.sam_phase{idx};
                    ylabel(ax,'Phase');
                    title(ax,'Phase')
                end
                
                switch plotType
                    case 'Sample'
                      plot(ax,fd_base,fd_sample,'linewidth',1);
                      lgd{cnt} = sampleID;
                      cnt = cnt + 1;
                    case 'Reference'
                      plot(ax,fd_base,fd_reference,'linewidth',1);
                    otherwise
                      plot(ax,fd_base,fd_reference...
                          ,fd_base,fd_sample,'linewidth',1);
                end
                
            end
            
            if isequal(plotType,'Sample')
                legend(ax,(lgd),'Location',"best",'Interpreter','none');
                legend(ax,"hide");
            end
            
            hold(ax,"off")
            
        end
        
        function plotFD_data2(app,axesNum)
            plotList = app.FD_select_2;
            ax = axesNum;
            
            if isempty(plotList)
                return;
            end
            
            plotType = app.PlotDataButtonGroup.SelectedObject.Text;
            plotInfo = app.MagPhaseButtonGroup_2.SelectedObject.Text;
            Yscale = app.YscaleButtonGroup_2.SelectedObject.Text;
            realImag = app.RealImagButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            ax.YScale = (Yscale);
            ax.ColorOrder = lines(length(plotList));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
    
            if size(plotType,1) == 2;
                plotType = strjoin(plotType(1));
            end
            
            % defining stopBand region(unreliable data)
            lowLimit = [];
            highLimit = [];
            
            for idx = plotList
                stopBand = app.FD_data.stopBand{idx};

                
                if length(stopBand) == 2
                    lowLimit = [lowLimit stopBand(1)];
                    highLimit = [highLimit stopBand(2)];
                end
            end
            
            stopBandAll = [min(lowLimit) max(highLimit)];
            
            if ~isempty(stopBandAll)
                xline(ax,stopBandAll(1),'--r',{'unreliable data'});
                xline(ax,stopBandAll(2),'--r');
            end
            
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleNameList{idx};
                lgd{cnt} = sampleID;
                cnt = cnt + 1;
                
                if isequal(plotInfo,'Amplitude')
                    fd_transmit = app.FD_data.transmit_amplitude{idx};
                    ylabel(ax,'Amplitude');
                else
                    fd_transmit = app.FD_data.transmit_phase{idx};
                    ylabel(ax,'Phase');
                end
                
                switch plotType
                    case 'TRANSMITTANCE'
                      plot(ax,fd_base,fd_transmit,'linewidth',1);
                      title(ax,'Transmittance');
                    case 'ABSORPTION'
                      fd_absorption = app.FD_data.absorption{idx};
                      plot(ax,fd_base,fd_absorption,'linewidth',1);
                      ylabel(ax,'Absorption coefficient (cm^{-1})');
                      title(ax,'Absorption');
                    case 'REFRACTIVE'
                      if isequal(realImag,'Real')
                          fd_refIdx = app.FD_data.refractiveIndex{idx};
                          ylabel(ax,'n',"FontSize",13);
                      else
                          fd_refIdx = app.FD_data.extinction{idx};
                          ylabel(ax,'\kappa',"FontSize",13);
                      end
                      plot(ax,fd_base,fd_refIdx,'linewidth',1);
                      title(ax,'Refractive Index')
                    otherwise
                      if isequal(realImag,'Real')
                          fd_dielectric = app.FD_data.eReal{idx};
                          ylabel(ax,'\epsilon\prime',"FontSize",13);
                      else
                          fd_dielectric = app.FD_data.eImag{idx};
                          ylabel(ax,'\epsilon\prime\prime',"FontSize",13);
                      end
                      plot(ax,fd_base,fd_dielectric,'Linewidth',1);
                      title(ax,'Dielectric Constant');                       
                end
                
            end
            
            legend(ax,(lgd),'Location',"best",'Interpreter','none');
            legend(ax,"hide");
            hold(ax,"off")
            
            
        end
        
        function FD_PlotData_reset(app)
%           app.TRANSMITTANCEButton.Enable = true;
            app.ABSORPTIONButton.Enable = false;
            app.REFRACTIVEINDEXButton.Enable = false;
            app.DIELECTRICCONSTANTButton.Enable = false;
        end
        
        function plotFD_dataNew(app)
            % Create UIFigure and hide until all components are created
            fig = uifigure('Visible', 'on');
            fig.Position = [100 100 1200 800];
            fig.Name = app.FILESEditField.Value;

            % Create UIAxes
            ax = uiaxes(fig);
            xlabel(ax, 'Frequency (THz)')
            ax.Position = [20 10 1140 780];
%             ax.YLim = [0 100];

             plotList = app.FD_select_2;
            
            if isempty(plotList)
                return;
            end
            
            plotType = app.PlotDataButtonGroup.SelectedObject.Text;
            plotInfo = app.MagPhaseButtonGroup_2.SelectedObject.Text;
            Yscale = app.YscaleButtonGroup_2.SelectedObject.Text;
            realImag = app.RealImagButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};        
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            ax.YScale = (Yscale);
            ax.ColorOrder = flipud(jet(length(plotList)));
            
             % defining stopBand region(unreliable data)
            lowLimit = [];
            highLimit = [];
            
            for idx = plotList
                stopBand = app.FD_data.stopBand{idx};

                
                if length(stopBand) == 2
                    lowLimit = [lowLimit stopBand(1)];
                    highLimit = [highLimit stopBand(2)];
                end
            end
            
            stopBandAll = [min(lowLimit) max(highLimit)];
            
            if ~isempty(stopBandAll)
                xline(ax,stopBandAll(1),'--r',{'unreliable data'});
                xline(ax,stopBandAll(2),'--r');
            end
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
    
            if size(plotType,1) == 2;
                plotType = strjoin(plotType(1));
            end
            
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleNameList{idx};
                lgd{cnt} = sampleID;
                cnt = cnt + 1;
%                 pause(1);
                
                if isequal(plotInfo,'Amplitude')
                    fd_transmit = app.FD_data.transmit_amplitude{idx};
                    ylabel(ax,'Amplitude');
                else
                    fd_transmit = app.FD_data.transmit_phase{idx};
                    ylabel(ax,'Phase');
                end

                switch plotType
                    case 'TRANSMITTANCE'
                      plot(ax,fd_base,fd_transmit,'linewidth',1);
                      title(ax,'Transmittance');
                    case 'ABSORPTION'
                      fd_absorption = app.FD_data.absorption{idx};
                      plot(ax,fd_base,fd_absorption,'linewidth',1);
                      ylabel(ax,'Absorption coefficient (cm^{-1})');
                      title(ax,'Absorption');
                    case 'REFRACTIVE'
                      fd_refIdx = app.FD_data.refractiveIndex{idx};
                      plot(ax,fd_base,fd_refIdx,'linewidth',1);
                      title(ax,'Refractive Index')
                    otherwise
                      if isequal(realImag,'Real')
                          fd_dielectric = app.FD_data.eReal{idx};
                      else
                          fd_dielectric = app.FD_data.eImag{idx};
                      end
                      plot(ax,fd_base,fd_dielectric,'Linewidth',1);
                      title(ax,'Dielectric Constant');                       
                end
                legend(ax,sampleID,'Interpreter','none');
            end
            
            legend(ax,(lgd),'Location',"best",'Interpreter','none');
            hold(ax,"off")
            
        end
        
        
        function output = TDSunwrap(app,pData,idx)
            % unwrapping functon
            freq = app.FD_data.frequency{idx};
            
            %unwrapping starting frequency: 0.5THz due to its high SNR
            srtFreq = 0.5 * 1e12;
            srtLoc = find(freq > srtFreq,1);
            pData1 = unwrap(pData(srtLoc:end));
            pData2 = unwrap(pData(srtLoc:-1:1));
            pData3 = pData2(end:-1:2);
            pData = [pData3 pData1];
            
            % correction for lower frequency region(0 to 0.1THz) with extrapolation
            epol_srtFreq = 0.05 * 1e12;
            epol_endFreq = 0.4 * 1e12;
            epol_srtLoc = find(freq > epol_srtFreq,1);
            epol_endLoc = find(freq > epol_endFreq,1);
            epol_freq = freq(epol_srtLoc:epol_endLoc);
            epol_data = pData(epol_srtLoc:epol_endLoc);
            
            p = polyfit(epol_freq,epol_data,1);
            shift = p(2); % y-axis intersection point value
            output = pData - shift;
            
        end
        
        function findDMPeaks(app)
            dataList = str2num(app.SourceDataSetEditField.Value);
            pksProm = app.MinPeakProminenceEditField.Value;
            lowLimit = app.LowerLimitTHzEditField.Value *10^12;
            pkNum = app.PeakNumSpinner.Value;
            ax = app.UIAxes9;
            hold(ax,"on")
            heightMat  = [];
            freqMat = [];
            
            if ~isempty(app.DM_peaks)
                delete(app.DM_peaks);
            end
            
            % arrange y-axis data
            for idx = dataList
                freq = app.FD_data.frequency{idx};
                dmData = app.DM_data.base{idx};
                [pks, locs] = findpeaks(dmData,freq,'MinPeakProminence',pksProm);
                
                if pkNum > length(pks)
                    fig = app.TerahertzSpectrumAnalyzerUIFigure;
                    msg = strcat("There is no ",num2str(pkNum),"th peak");
                    uialert(fig,msg,'Warning');
                    app.PeakNumSpinner.Value = 1;
                    return;
                end
                
                if ~isempty(pks)
                    heightMat = [heightMat pks(pkNum)];
                    freqMat = [freqMat locs(pkNum)];
                    plot(ax,locs,pks,'o');
                    text(locs+.04,pks,num2str((1:numel(pks))'));
                end
            end
            hold(ax,"off")
                
            app.DM_data.heightMat = flip(heightMat);
            app.DM_data.freqMat = flip(freqMat);
        end
        
        function updateCFPlot(app)
            ax = app.UIAxes11;
            xData = app.CF_data.xData;
            yData = app.CF_data.yData; 
            cla(ax)
            hold(ax,"on")
            plot(ax,xData,yData,'Marker','o','MarkerSize',3);
        end    
        
        function fitness = fitModel(app,n_opt,T_amp,T_phase,n_ref,d,w,etlNum)
            c = 2.9979e8;
            n_opt = complex(n_opt(1),n_opt(2));
            
            eq1 = (4*n_ref*n_opt/((n_ref + n_opt)^2))*exp(1i*(n_opt - n_ref)*w*d/c);
            eq2 = 1;
            
            if ~isequal(etlNum,0)
                for del = 1:etlNum
                    etl = (((n_opt-n_ref)/(n_opt+n_ref))*exp(i*w*n_opt*d/c))^(2*del);
                    eq2 = eq2 + etl;
                end    
            end
            
            transFunc = eq1*eq2;

            % get wrapped transmittance phase for error function
            wT_phase = wrapToPi(T_phase);
                        
            fitness = abs(T_amp - abs(transFunc)) + abs(wT_phase - angle(transFunc));
         
        end
        
        function AdvFDbuttonsEnable(app,tf)
            app.ABSORPTIONButton.Enable = tf;
            app.REFRACTIVEINDEXButton.Enable = tf;
            app.DIELECTRICCONSTANTButton.Enable = tf;
            app.BANDWIDTHFILTERButton.Enable = tf;
            
            app.optimisationButton.Enable = tf;
            app.dataManipulationButton.Enable = tf;
            app.curveFittingButton.Enable = tf;
            
        end
        
        function algorithmSearch(app,idx,btn)
            c = 2.9979e8;
            sam_thickness = app.FD_data.meta.thickness{idx};
            ref_thickness = app.FD_data.meta.refThickness{idx};
            ref_etlNum = app.FD_data.meta.timeRange{idx}(3);
            etlNum = app.FD_data.meta.timeRange{idx}(4);
            sampleID = app.FD_data.sampleNameList{idx};
            
            freq = app.FD_data.frequency{idx};
            T_amp = app.FD_data.transmit_amplitude{idx};  
            T_phase = app.FD_data.transmit_phase{idx};
            n_samR = app.FD_data.refractiveIndex{idx};
            n_samI = app.FD_data.extinction{idx};
            n_ref = 1.00027;
            sam_thickness = sam_thickness * 10^-3; % mm to m
            
            n_optR = [];
            n_optI = [];
            fitness = [];
            loc = 0;
            
            for f = freq
                loc = loc + 1;
                w = 2*pi*f;
                
                progrs = loc/length(freq)*100;
                progrs = num2str(progrs,'%.0f');
                progrs= strcat('Item:',num2str(idx),' Search algorithm progress:',progrs,'%');
                app.DEBUGMsgLabel.Text = progrs;
                drawnow
                n_exp = [n_samR(loc) n_samI(loc)];
               
                % Nelder-Mead Simplex minimization algorithm
                %{function
                options = optimset('Display','notify','TolFun',1e-8 ,'MaxFunEvals',1e7,'MaxIter',1e7);
                [n fitness] = fminsearch(@(n_opt) fitModel(app,n_opt,T_amp(loc),T_phase(loc),n_ref,sam_thickness,w,etlNum),n_exp,options);
                %}

                % Genetic algorithm search algorithm
                %{
                FitFcn = @(n_opt) fitModel(app,n_opt,T_amp(loc),T_phase(loc),n_ref,sam_thickness,w,etlNum);
                nvars = 2; % number of input arguments
                br = 0.15; % lower and upper bound range
                lb = n_exp.*(1-br);
                ub = n_exp.*(1+br);
                
                [n fitness] = ga(FitFcn,nvars,[],[],[],[],lb,ub);                
                %}
 
                n_optR(loc) = n(1);
                n_optI(loc) = n(2);
                n_opt(loc) = complex(n(1),n(2));
                fitMat(loc) = fitness;
                
                % check the differences fitness value on n_exp
                fitMat2(loc) = fitModel(app,n_exp,T_amp(loc),T_phase(loc),n_ref,sam_thickness,w,etlNum);               
                
            end
            
            app.OP_data.frequency{idx} = freq;
            app.OP_data.refractiveIndex{idx} = n_optR;
            app.OP_data.extinction{idx} = n_optI;
            app.OP_data.n_opt{idx} = n_opt;
            app.OP_data.fitness{idx} = fitMat;
            app.OP_data.fitness2{idx} = fitMat2;
            
            % calculate alpha and epsilon
            app.OP_data.eReal{idx} = n_optR.^2 - n_optI.^2;
            app.OP_data.eImag{idx} = 2*n_optR.*n_optI;
            % 100 in absoprtion equation is to change m^-1 to cm^-1 
            app.OP_data.absorption{idx} = (4*pi*n_optI.*freq)./(c*100);
          
            % plotting optimized functions
            ax1 = app.UIAxes5;
            ax2 = app.UIAxes6;
            ax3 = app.UIAxes7;
            ax4 = app.UIAxes8;
            
            cla(ax1)
            cla(ax2)
            cla(ax3)
            cla(ax4)
            
            freq = freq*10^-12;
            
            plot(ax1,freq,fitMat2);
            hold(ax1,"on")
            plot(ax1,freq,fitMat);
            
            plot(ax2,freq,n_samR);
            hold(ax2,"on")
            plot(ax2,freq,n_optR);
            
            plot(ax3,freq,n_samI);
            hold(ax3,"on")
            plot(ax3,freq,n_optI);
            
            lgd1 = legend(ax1,'Raw','Opt');
            lgd2 = legend(ax2,'Raw','Opt');
            lgd3 = legend(ax3,'Raw','Opt');
            
            title(lgd1,sampleID,"Interpreter","none");
            title(lgd2,sampleID,"Interpreter","none");
            title(lgd3,sampleID,"Interpreter","none");
            
            title(ax1,'Fitness');
            title(ax2,'Refractive Index');
            title(ax2,'Extinction coefficient');
            
            hold(ax1,"off")
            hold(ax2,"off")
            hold(ax3,"off")

        end
        
        function plotOptData(app,idx,type)
            
                                    
            ax1 = app.UIAxes5;
            ax2 = app.UIAxes6;
            ax3 = app.UIAxes7;
            
            if isequal(type,'a')
                data11 = app.OP_data.fitness{idx};
                data12 = app.OP_data.fitness{idx};
                data21 = app.FD_data.refractiveIndex{idx};
                data22 = app.OP_data.refractiveIndex{idx};
                data31 = app.FD_data.extinction{idx};
                data32 = app.OP_data.extinction{idx};
                
                title(ax1,'Fitness');
                title(ax2,'Refractive Index');
                title(ax3,'Extinction coefficient');
            else
                data11 = app.FD_data.absorption{idx};
                data12 = app.OP_data.absorption{idx};
                data21 = app.FD_data.eReal{idx};
                data22 = app.OP_data.eReal{idx};
                data31 = app.FD_data.eImag{idx};
                data32 = app.OP_data.eImag{idx};
                
                title(ax1,'Absorption Coefficient (cm^{-1})');
                title(ax2,'Dielectric Constant (real)');
                title(ax3,'Dielectric Constant (imaginary)');
            end
            
            freq = app.OP_data.frequency{idx};
            sampleID = app.FD_data.sampleNameList{idx};
            freq = freq * 10^-12;

                
            cla(ax1)
            cla(ax2)
            cla(ax3)
            
            plot(ax1,freq,data11);
            hold(ax1,"on")
            plot(ax1,freq,data12);
            
            plot(ax2,freq,data21);
            hold(ax2,"on")
            plot(ax2,freq,data22);
            
            plot(ax3,freq,data31);
            hold(ax3,"on")
            plot(ax3,freq,data32);
            
            lgd1 = legend(ax1,'experimental','theoretical');
            lgd2 = legend(ax2,'experimental','theoretical');
            lgd3 = legend(ax3,'experimental','theoretical');
            
            title(lgd1,sampleID,'Interpreter',"none");
            title(lgd2,sampleID,'Interpreter',"none");
            title(lgd3,sampleID,'Interpreter',"none");
            
            hold(ax1,"off")
            hold(ax2,"off")
            hold(ax3,"off")
            
        end
        
        function updateTable(app)
            sampleID = app.CF_data.T.sampleID;
            itemIdx = app.CF_data.T.itemIdx;
            
            B = app.CF_data.T.B;
            b = app.CF_data.T.b;
            A1 = app.CF_data.T.A1;
            x1 = app.CF_data.T.x1;
            g1 = app.CF_data.T.g1;
            A2 = app.CF_data.T.A2;
            x2 = app.CF_data.T.x2;
            g2 = app.CF_data.T.g2;
            A3 = app.CF_data.T.A3;
            x3 = app.CF_data.T.x3;
            g3 = app.CF_data.T.g3;
            AP = app.CF_data.T.AP;
            CP = app.CF_data.T.CP;
            Per = app.CF_data.T.Per;
            
            T = table(itemIdx',sampleID',B,b,A1,x1,g1,A2,x2,g2,A3,x3,g3,AP,CP,Per);
            app.UITable.Data = T;                   
        end
        
        function findCurvePeaks(app,idx,pkNum)
           ax = app.UIAxes12;
           xData = app.CF_data.xData;
           yRefData = app.CF_data.yRefNext;
          
           switch pkNum
               case 1
                   minProm = app.PeakMinprominenceSlider.Value;
                   lb = app.LowerboundaryEditField.Value;
                   ub = app.UpperboundaryEditField.Value;
                   cla(ax)
               case 2
                   minProm = app.PeakMinprominenceSlider_2.Value;
                   lb = app.LowerboundaryEditField_2.Value;
                   ub = app.UpperboundaryEditField_2.Value;
               case 3
                   minProm = app.PeakMinprominenceSlider_3.Value;
                   lb = app.LowerboundaryEditField_3.Value;
                   ub = app.UpperboundaryEditField_3.Value;
           end

           
           [pks, locs] = findpeaks(yRefData,xData,'MinPeakProminence',minProm);
           lbLoc = sum(locs<lb)+1;
           ubLoc = sum(locs<ub);
           pks = pks(lbLoc:ubLoc);
           locs = locs(lbLoc:ubLoc);
           
           plot(ax,xData,yRefData);
           hold(ax,"on")
           
           if ~isempty(pks)
               app.CF_data.peak{idx,pkNum} = [pks(1), locs(1)];    
               plot(ax,locs(1),pks(1),'o');
               text(ax,locs(1)+.1,pks(1),num2str(pkNum));
           end
           
        end
        
        function fitCurvePeaks(app,idx,pkNum)
            xData = (app.CF_data.xData)';
            yData = (app.CF_data.yData)';
            yRefData = (app.CF_data.yRefNext)';
            
            lcFieldAList = {'A1','A2','A3'};
            lcFieldxList = {'x1','x2','x3'};
            lcFieldgList = {'g1','g2','g3'};
            ANum = char(lcFieldAList(pkNum));
            xNum = char(lcFieldxList(pkNum));
            gNum = char(lcFieldgList(pkNum));
            
            
            if isequal(size(app.CF_data.peak,1),0)
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                msg = strcat('Item: ',num2str(idx),', Peak: ',num2str(pkNum),' is not dectected. Skip this peak.');
                uialert(fig,msg,'Warning');
                return;
            end
            
            pksLoc = app.CF_data.peak{idx,pkNum};
            
            if isempty(pksLoc)
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                msg = strcat('Item: ',num2str(idx),', Peak: ',num2str(pkNum),' is not dectected. Skip this peak.');
                uialert(fig,msg,'Warning');
                return;
            end
            
            A = pksLoc(1);
            x = pksLoc(2);

            ax = app.UIAxes12;
            ax0 = app.UIAxes11;
            xTol = 0.05*(pkNum); % set the resonance frequency tolerance range based on peak number
            
            FitFcn = @(LC) sum(abs(yRefData-LC(1)./(1+((xData-LC(2))./LC(3)).^2)));
            % reflect Lorentzian curve weight to the fitness function for its significance     
%             FitFcn = @(LC) sum(abs(yRefData-LC(1)./(1+((xData-LC(2))./LC(3)).^2)).*1./(1+((xData-LC(2))./(2*LC(3))).^2));
            nvars = 3; % number of input arguments                
            [LC, fitness] = ga(FitFcn,nvars,[],[],[],[],[A*(1-xTol) x-xTol 0.05],[A*(1+xTol) x+xTol 1]);
            lorentzCurve = LC(1)./(1+((xData-LC(2))./LC(3)).^2);              
            
            
            fitCurveSum = app.CF_data.fitCurveSum{idx} + lorentzCurve';
            app.CF_data.T.(ANum){idx} = LC(1);
            app.CF_data.T.(xNum){idx} = LC(2);
            app.CF_data.T.(gNum){idx} = LC(3);  
            app.CF_data.fitCurveSum{idx} = fitCurveSum;
            app.CF_data.T.CP{idx} = trapz(fitCurveSum);
            
            % Crystallinity
            cPer = app.CF_data.T.CP{idx}/(app.CF_data.T.CP{idx}+app.CF_data.T.AP{idx});
            cPer = cPer * 100;
            app.CF_data.T.Per{idx} = cPer;
    
            plot(ax,xData,lorentzCurve,'--r');
            

            
            yRefNext = yRefData - lorentzCurve;
            app.CF_data.yRefNext = yRefNext';
            plot(ax,xData,yRefNext,'-.g'); 
            
            yMax = max(yRefNext);
            
            if isequal(pkNum,1)
                app.PeakMinprominenceSlider_2.Limits = [0, yMax];
                app.PeakMinprominenceSlider_2.Value = yMax/10;
                app.PeakMinPromEditField_2.Value = yMax/10;
            else
                app.PeakMinprominenceSlider_3.Limits = [0, yMax];
                app.PeakMinprominenceSlider_3.Value = yMax/10;
                app.PeakMinPromEditField_3.Value = yMax/10;
            end
            
            plot(ax0,xData,yData - app.CF_data.fitCurveSum{idx}','--r');
            
            updateTable(app); 
  
            if ~isequal(pkNum,3)
               findCurvePeaks(app,idx,pkNum+1); 
            end
        end
        
        function findPowerLaw(app,idx)
            fitAlgorithm = app.AlgorithmDropDown.Value;
            fitAdj = app.IterationEditField.Value;
            
            ax1 = app.UIAxes11;
            
            if ~isfield(app.CF_data,'xData')
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'Plot the data to fit first.','Warning');
                return;
            end
            
            xData = (app.CF_data.xData)';
            yData = (app.CF_data.yData)';
            app.CF_data.fitCurveSum{idx} = zeros(1,length(xData));
            
            if isequal(fitAlgorithm,'a') % a = power law fit function
                yFit = yData;
                [f, fitness] = fit(xData,yFit,'B*x.^b');
                fitData = feval(f,xData);
                for i=1:fitAdj % remove the area above fit function
                    yFit = min(yFit,fitData);
                    [f, fitness] = fit(xData,yFit,'B*x.^b');
                    fitData = feval(f,xData);
                end
                powerLaw = fitData;
                
            elseif isequal(fitAlgorithm,'b') % or 'Matlab Curve Fit Fcn'
                
                fcnName = app.FitFcnEditField.Value;          
                
                if isempty(fcnName)
                    fig = app.TerahertzSpectrumAnalyzerUIFigure;
                    uialert(fig,'Fit function is not defined. Process aborted.','Warning');
                    return;
                end
                
                fcnName = strrep(fcnName,'.m','');
                
                clear(fcnName);
                [f, gof] = feval(fcnName,xData,yData);
                
                app.CF_data.fitFcn{idx} = f;
                
                powerLaw = @(x)((f.B)*x.^(f.b));
                powerLaw = powerLaw(xData);
                
            else % universital baseline option, [PLOT ALL] has to be precede to use this option
                yFit = app.CF_data.yDataMin';
                [f, fitness] = fit(xData,yFit,'B*x.^b');
                fitData = feval(f,xData);
                for i=1:fitAdj % remove the area above fit function
                    yFit = min(yFit,fitData);
                    [f, fitness] = fit(xData,yFit,'B*x.^b');
                    fitData = feval(f,xData);
                end
                powerLaw = fitData;
            end
            
            plot(ax1,xData,powerLaw);
            drawnow
            
            app.CF_data.T.B{idx} = f.B;
            app.CF_data.T.b{idx} = f.b;
            app.CF_data.T.AP{idx} = trapz(powerLaw);
            
            updateTable(app);
            
            yRefNext = yData - powerLaw;
            app.CF_data.yRefNext = yRefNext';
            yMax = max(yRefNext);
            
           app.PeakMinprominenceSlider.Limits = [0,yMax];
           app.PeakMinPromEditField.Limits = [0, yMax];
           app.PeakMinprominenceSlider.Value = yMax/15;
           app.PeakMinPromEditField.Value = yMax/15;
        end
        
        function dispCurvePeaks(app,idx)
            xData = (app.CF_data.xData)';
            yData = (app.CF_data.yData)';
            yRefData = (app.CF_data.yRefNext)';
            
            ax = app.UIAxes12;
            ax0 = app.UIAxes11;
            plot(ax,xData,yRefData);
            
            f = app.CF_data.fitFcn{idx};
%             f.A1
%             f.B
%             f.b
%             isfield(f,'B')
%             % total Lorentzian curve number (maximum value is 3)
%             pkTNum = isfield(f,'A1') + isfield(f,'A2') + isfield(f,'A3')
            pkTNum = 1;
                    
            lcFieldAList = {'A1','A2','A3'};
            lcFieldxList = {'x1','x2','x3'};
            lcFieldgList = {'g1','g2','g3'};
            
            
            for pkNum = 1:pkTNum
                yRefData = (app.CF_data.yRefNext)';
                
                ANum = char(lcFieldAList(pkNum));
                xNum = char(lcFieldxList(pkNum));
                gNum = char(lcFieldgList(pkNum)); 
                
                A = f.(ANum);
                x = f.(xNum);
                g = f.(gNum);
                
                lorentzCurve = A./(1+((xData-x)./g).^2);
                
                app.CF_data.T.(ANum){idx} = A;
                app.CF_data.T.(xNum){idx} = x;
                app.CF_data.T.(gNum){idx} = g;          
            
                updateTable(app);     
                plot(ax,xData,lorentzCurve,'--r');
                
                app.CF_data.fitCurveSum{idx} = app.CF_data.fitCurveSum{idx} + lorentzCurve';
                yRefNext = yRefData - lorentzCurve;
                app.CF_data.yRefNext = yRefNext';
                plot(ax,xData,yRefNext,'-.g'); 
            end
            
            plot(ax0,xData,yData - app.CF_data.fitCurveSum{idx}','--r');
        end
        
        function [samples, references, baselines, sampleNameList, metadataStruct] = readProject(app,fullpath,filename)
                    HDFDataSet='/TerapulseDocument/Measurements/Spectra Data';
        
                    if isempty(fullpath)
                             return;
                    end
                    
                    app.DEBUGMsgLabel.Text = 'Loading....';
                    drawnow
                    
                    % Extract sample data from HDF5 project file
                    try
                        HDFDataInfo = h5info(fullpath, HDFDataSet);
                    catch ME
                        fig = app.TerahertzSpectrumAnalyzerUIFigure;
                        uialert(fig,'Incorrect HDF5 Data Set','Warning');
                        app.ExtractDataButton.Enable = true;
                        app.DEBUGMsgLabel.Text = 'Loading cancelled';
                        return;
                    end
                    
%                     assignin('base',"HDFinfo",HDFDataInfo);
                    
                    nSamples = size(HDFDataInfo.Groups,1);
                    samples = cell(nSamples,2);
                    references = cell(nSamples,2);
                    baselines = cell(nSamples,2);
                    sampleNameList = cell(nSamples,1);
                    metadataStruct = cell(nSamples,1);
        
                    for idx=1:nSamples
                        groupName = HDFDataInfo.Groups(idx).Name;
%                         HDFSet_baselineX =strcat(groupName,'/baseline/sample/xdata');
%                         HDFSet_baselineY =strcat(groupName,'/baseline/sample/ydata');
                        HDFSet_referenceX =strcat(groupName,'/reference/sample/xdata');
                        HDFSet_referenceY =strcat(groupName,'/reference/sample/ydata');
                        HDFSet_sampleX =strcat(groupName,'/sample/xdata');
                        HDFSet_sampleY =strcat(groupName,'/sample/ydata');
                        
                        settingInfo = h5readatt(fullpath,strcat(groupName,"/sample"),'UserScanSettings');
                        waveformRate = str2num(extractBefore(extractAfter(settingInfo,'waveform_rate":'),'}'));
                        coaverage = str2num(extractBefore(extractAfter(settingInfo,'coaverages":'),','));
                        description = extractBefore(extractAfter(settingInfo,'description":'),',');
                        ScanStartDateTime = extractBefore(extractAfter(settingInfo,'ScanStartDateTime":'),',');

                        try
                            xSpacing = HDFDataInfo.Groups(idx).Groups(2).Attributes(21).Value;
                            wfmLength = HDFDataInfo.Groups(idx).Groups(2).Attributes(1).Value;
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(2).Attributes(9).Value);
                        catch ME
                            xSpacing = HDFDataInfo.Groups(idx).Groups(1).Attributes(21).Value;
                            wfmLength = HDFDataInfo.Groups(idx).Groups(1).Attributes(1).Value;
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(9).Value);    
                        end
                        
                        try
%                             baselines(idx,1) = {h5read(fullpath,HDFSet_baselineX)};
%                             baselines(idx,2) = {h5read(fullpath,HDFSet_baselineY)};
                            references(idx,1) = {h5read(fullpath,HDFSet_referenceX)};
                            references(idx,2) = {h5read(fullpath,HDFSet_referenceY)};
                        catch ME
                            fig = app.TerahertzSpectrumAnalyzerUIFigure;
                            uialert(fig,'Reference data are not accessible.','Warning');
                            app.DEBUGMsgLabel.Text = 'Loading aborted';
                            return
                        end
                        
                        samples(idx,1) = {h5read(fullpath,HDFSet_sampleX)};
                        samples(idx,2) = {h5read(fullpath,HDFSet_sampleY)};
                        sampleNameList{idx} = {sampleName};
                         
                        metadataStruct(idx) = {struct('sampleName',sampleName,'wfmLength',wfmLength,'waveformRate',waveformRate,...
                            'coaverage',coaverage,'xSpacing',xSpacing,'description',description,'ScanStartDateTime',ScanStartDateTime)};
                                        
                        progressP = idx/nSamples*100;
                        progressP = num2str(progressP,'%.0f');
                        progressP = strcat("Loading: ", progressP,"%");
                        app.DEBUGMsgLabel.Text = progressP;
                        drawnow
                    end
                    
                    app.DEBUGMsgLabel.Text = "Extraction Done";
        end
    end
    
    methods (Access = public)
        
        function updateThickness(app,thickness,pksProm,loc,All,refMdm,maxPer)
            
            TDselected = app.MeasurementListBox.Value;
            app.ThicknessEditField.Value = thickness;
            app.TD_data.metadata.thickness{TDselected} = thickness;
            
            if ~isequal(All,0)
                for TDindex = 1:app.TD_data.nSamples
                    if isequal(All,1)
                        refT = app.TD_data.references{TDindex,1};
                        refE = app.TD_data.references{TDindex,2};
                        samT = app.TD_data.samples{TDindex,1};
                        samE = app.TD_data.samples{TDindex,2};
                        pksDetail = app.TD_data.analysis{TDindex};
                       
                        del_t = pksDetail(3);
                        tShift = find(refT > del_t,1) - find(refT > 0,1);
                        refE = [zeros(1,tShift) refE(1:end-tShift)];
                        refE = refE * (pksDetail(2)/pksDetail(1));

                        % QUARTZ medium case is not reflected yet.
                        
                        pksLLimit = 4*del_t;
                        diff = samE - refE;
                        [pks, locs] = findpeaks(diff,refT,'MinPeakProminence',pksProm);
                        pks = pks(locs>pksLLimit);
                        locs = locs(locs>pksLLimit);
                     
                        mrt = locs(loc);
                        pkloc = find(refT == mrt,1);
                        
                        % peak time correction function
                        mrtAmp = diff(pkloc);
                        mrtRange = diff > mrtAmp*maxPer; % 0 and 1 vector
                        maxPerRange = 25;
                        mrtRange(1:pkloc-maxPerRange) = 0;
                        mrtRange(pkloc+maxPerRange:end) = 0;
                        mrt = sum(refT.*mrtRange)/sum(mrtRange);
                        
                        mrt = mrt *10^-12;
                        
                        del_t = del_t*10^-12;
                        thickness = floor((mrt - 3*del_t)*3e8/2*10^3*1000)/1000;
                    end
                    
                    % reflect updated thickness
                    app.TD_data.metadata.thickness{TDindex} = thickness;
                    TDanalysisUpdate(app,TDindex);
                end
            end
            TDanalysisUpdate(app,TDselected);
            
        end
        
        function updateFreqRange(app,limitFreq,all,stopBand)
            
            FDindex = app.FDSelectionListBox_2.Value;
            filterList = FDindex;
            
            if all
                filterList = app.FD_select_2;
            end
                
            for FDindex = filterList
                % find limitFreq location
                freq = app.FD_data.frequency{FDindex};
                limitLoc = sum(freq < (limitFreq * 10^12));
                
                % update FD_data
                app.FD_data.references{FDindex}(limitLoc:end) = [];
                app.FD_data.samples{FDindex}(limitLoc:end) = [];
                app.FD_data.ref_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.ref_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.sam_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.sam_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.transmit_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.transmit_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.refractiveIndex{FDindex}(limitLoc:end) = [];
                app.FD_data.absorption{FDindex}(limitLoc:end) = [];    
                app.FD_data.frequency{FDindex}(limitLoc:end) = [];
                app.FD_data.extinction{FDindex}(limitLoc:end) = [];
                app.FD_data.eReal{FDindex}(limitLoc:end) = [];
                app.FD_data.eImag{FDindex}(limitLoc:end) = [];
                app.FD_data.stopBand{FDindex} = stopBand;
            end 
        end
        
        function updateThickness2(app,thicknesses,updateList)
            for idx = updateList
                app.TD_data.metadata.thickness{idx} = thicknesses(idx);
                TDanalysisUpdate(app,idx);
            end
        end
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.PRJ_count = 0;
            app.filename = [];
            app.DEBUGMsgLabel.Text = app.TerahertzSpectrumAnalyzerUIFigure.Tag;
        end

        % Button pushed function: IMPORTPROJECTButton
        function IMPORTPROJECTButtonPushed(app, event)
            [filename, pathname] = uigetfile('*.tprj');
            % PRJ_count: number of project files imported
            PRJ_count = app.PRJ_count;
            
            if isequal(filename,0)||isequal(pathname,0)
                return;          
            end
            
            % if the imported file is already exist in the list,
            % just return
            for cnt = 1:PRJ_count
                if isequal(app.filename{cnt},filename)
                    return;
                end
            end
            
            PRJ_count = PRJ_count + 1;
            
            fileinfo = strcat(pathname,filename);
            app.filename{PRJ_count} = filename;
            app.fullpathname{PRJ_count} = fileinfo;
            app.EXTRACTDATAButton.Enable = true;
                       
            allFileList = strjoin(app.filename,',');
            allFileList = strrep(allFileList,'.tprj','');          
            app.FILESEditField.Value = allFileList;
                      
            % initialization
            app.TD_select = [];
            app.FD_select = [];
            app.FD_select_2 = [];
            app.MeasurementListBox.Items = {};
            app.SelectionListBox.Items = {};
            app.FDListListBox.Items = {};
            app.FDSelectionListBox.Items = {};
            cla(app.UIAxes1)
            cla(app.UIAxes2)
            cla(app.UIAxes3)
            cla(app.UIAxes4)
            
            
            app.PRJ_count = PRJ_count;
            
            %throw a message when there is no associated yaml file
            %in the folder.
        end

        % Button pushed function: EXTRACTDATAButton
        function EXTRACTDATAButtonPushed(app, event)
            % peak location is calcuated based on the center position of 
            % two points at maxPer of the maximum value.
            maxPer = 0.70;
            app.TD_data.maxPer = maxPer;
            
            app.FD_data.sampleNameList = {};
            app.FD_data.settings = {};
            app.FD_data.meta = {};
            
            IdxStr = 1;
            
            for PRJcnt = 1:app.PRJ_count
                fullpath = app.fullpathname{PRJcnt};
                filename = extractBefore(app.filename{PRJcnt},'.tprj')
                
                if isempty(fullpath)
                     return;
                end
                
                %extracting data from TeraPulse prject file
                [ samples, references, baselines, sampleNameList, metadataStruct ] = ...
                    readProject(app,fullpath,filename);
                    
                MeasCount = size(samples,1);
                app.TD_data.samples(IdxStr:IdxStr+MeasCount-1,1) = samples(:,1);
                app.TD_data.samples(IdxStr:IdxStr+MeasCount-1,2) = samples(:,2);
                app.TD_data.references(IdxStr:IdxStr+MeasCount-1,1) = references(:,1);
                app.TD_data.references(IdxStr:IdxStr+MeasCount-1,2) = references(:,2);
                app.TD_data.sampleNameList(IdxStr:IdxStr+MeasCount-1) = sampleNameList(:);
                 app.TD_data.settings(IdxStr:IdxStr+MeasCount-1) = metadataStruct(:);

%                 for idx = 1:MeasCount
%                     fieldname = char(sampleNameList{idx});
%                     fieldname = matlab.lang.makeValidName(fieldname);
%                     app.TD_data.settings{IdxStr+idx-1} = metadataStruct.(fieldname);               
%                 end
                 
         
                %extracting metadata from yaml file
                yamlfullpath = replace(fullpath,'tprj','yaml');
                %metadata = ReadYaml(yamlfullpath);
                
                app.TD_data.nSamples = IdxStr + MeasCount - 1;
                
                %if isempty(fieldnames(metadata))
                if true
                    app.DEBUGMsgLabel.Text = ['No yaml file to read'];
                   IsMetadata = 0;
                else
                   IsMetadata = 1;
                end
                
                
                %set the ref. peak location 0
                for MeasNum = IdxStr:MeasCount+IdxStr-1
                    
                    t_ref = app.TD_data.references{MeasNum,1};
                    E_ref = app.TD_data.references{MeasNum,2};
                    [Ref_max Ref_idx] = max(E_ref);
                    
                    % find the peak locations based on maxPer setting
                    maxPerLocs = find(E_ref >(Ref_max*maxPer));
                    maxLoc = maxPerLocs(round(length(maxPerLocs)/2));
                    
                    % Just for performance test between two peak picking
                    %maxLoc = Ref_idx
                        
                    time_shift = t_ref(maxLoc);
                    t_ref = t_ref - time_shift;
                    app.TD_data.references{MeasNum,1} = t_ref;
                    
                    t_sample = app.TD_data.samples{MeasNum,1};
                    E_sample = app.TD_data.samples{MeasNum,2};
                    t_sample = t_sample - time_shift;
                    app.TD_data.samples{MeasNum,1} = t_sample;
                    
                    Sam_max = max(E_sample);
                    maxPerLocs = find(E_sample >(Sam_max*maxPer));
                    maxLoc = maxPerLocs(round(length(maxPerLocs)/2));
                    
                    %allocating metadata (thickness, diametre and so on)
%                     SampleID = sampleNameList{MeasNum-IdxStr+1}{1}(end-2:end);
                    SampleID = sampleNameList{MeasNum-IdxStr+1}{1}(end-2:end);
                    
                    if IsMetadata
                        thickness = metadata.(SampleID).TabletThickness;
                        weight = metadata.(SampleID).Weight;
                        diameter = metadata.(SampleID).Diameter;
                    else
                        thickness = 0;
                        weight = 0;
                        diameter = 0;
                    end
                    
                    app.TD_data.metadata.thickness{MeasNum} = thickness;
                    %add more metadata here if needed
                    
                    %time domain analysis->[Ref_max, Sam_max, delta_t, n]
                    delta_t = t_sample(maxLoc);
                    
                    if thickness == 0;
                        n_eff = 0;
                        etl_t = 0;
                    else
                        n_eff = delta_t*10^-12*3e8/(thickness*10^-3) + 1;
                        etl_t = delta_t + ...
                            (2*thickness*10^-3*n_eff/3e8)*10^12;
                
                    end
    
                    app.TD_data.analysis{MeasNum} = [Ref_max, ...
                        Sam_max, delta_t, n_eff, etl_t];
                    
                    progressP = MeasNum/(MeasCount+IdxStr-1)*100;
                    progressP = num2str(progressP,'%.0f');
                    progressP = strcat("Project ",num2str(PRJcnt)," ",progressP,"% data extracted");
                    app.DEBUGMsgLabel.Text = progressP;
                    drawnow
                end
                
                IdxStr = IdxStr + MeasCount;
            end
            

            
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
            
            %measurment list
            ListBoxItem={};
            
            for MeasNum = 1:app.TD_data.nSamples
                AddItem = strjoin(app.TD_data.sampleNameList{MeasNum});
                ListBoxItem{MeasNum} = AddItem;
            end
%             ListBoxItem = app.TD_data.sampleNameList;
            app.MeasurementListBox.ItemsData = (1:MeasNum);
            app.MeasurementListBox.Items = ListBoxItem;
            app.TRANSFORMButton.Enable = true;
        end

        % Value changed function: MeasurementListBox
        function MeasurementListBoxValueChanged(app, event)
            MeasNum = app.MeasurementListBox.Value;
            delta_t = app.TD_data.analysis{MeasNum}(3);
            thickness = app.TD_data.metadata.thickness{MeasNum};
            n_eff = app.TD_data.analysis{MeasNum}(4);
            etl_t = app.TD_data.analysis{MeasNum}(5);
            
            %find corresponding sampleID for the value change
%             sampleID = strjoin(app.TD_data.sampleNameList{MeasNum});
%             sampleID = matlab.lang.makeValidName(sampleID);
% 
%             description = app.TD_data.settings.(sampleID).description;
%             scanTime = app.TD_data.settings.(sampleID).ScanStartDateTime;
            description = app.TD_data.settings{MeasNum}.description;
            scanTime = app.TD_data.settings{MeasNum}.ScanStartDateTime;
%             optDelExt = app.TD_data.settings.(sampleID).optical_delay_extent;
%             optDelOff = app.TD_data.settings.(sampleID).optical_delay_offset;
%             prepExt = app.TD_data.settings.(sampleID).prepulse_extent;
            
            %display measurement setting
            app.DescriptionEditField.Value = description;
            app.ScanTimeEditField.Value = scanTime;
%             app.OpticalDelayExtentEditField.Value = optDelExt;
%             app.OpticalDelayOffsetEditField.Value = optDelOff;
%             app.PrepulseExtentEditField.Value = prepExt;
            
            %display sample detail
            app.delta_tEditField.Value = delta_t;
            app.ThicknessEditField.Value = thickness;
            app.RefractiveIndexEditField.Value = n_eff;
            app.streflectionEditField.Value = etl_t;
            
        end

        % Button pushed function: ADDButton
        function ADDButtonPushed(app, event)
            
            addItem = app.MeasurementListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if isempty(addItem)
                return;
            end
            
            if ~sum(app.TD_select == addItem)
                app.TD_select = [app.TD_select addItem];
                app.TD_select = sort(app.TD_select);
                ListBoxItemValue = app.TD_select;
                
                for ListNo = 1:length(app.TD_select)
                   ItemNo = app.TD_select(ListNo);
                   AddItem = strjoin(app.TD_data.sampleNameList{ItemNo});
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             app.SelectionListBox.ItemsData = ListBoxItemValue;
             app.SelectionListBox.Items = ListBoxItem;
            
            end
             
            if ~isequal(addItem,1)
                List = app.MeasurementListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.MeasurementListBox.Value = cursor;                  
                end

            end
            
        end

        % Button pushed function: TRANSFORMButton
        function TRANSFORMButtonPushed(app, event)
            
            % checking the current FD list number
            FDindexNum = size(app.FD_data.sampleNameList,2);
            FDindex = 0;
            
            ListBoxItem = app.FDListListBox.Items;
            addFDList = app.TD_select;
            isAutowindow = app.AUTOWINDOWButton.Value;
            min_freq = app.MinFreqEditField.Value;
            max_freq = app.MaxFreqEditField.Value;
            upscale = app.ZeroFillingpowerofSpinner.Value; 
            funcName = app.ApodizationFunctionDropDown.Value; %window function
            
            for cnt = 1:length(addFDList)
                
                TDindex = addFDList(cnt);
                
                % reference waveform 
                xSpacing = app.TD_data.settings{TDindex}.xSpacing;
                fs = 1/(xSpacing*10^-12); % obtain sampling frequency based on xSpacing value
                t_reference = app.TD_data.references{TDindex,1};
                E_reference = app.TD_data.references{TDindex,2};
                
                % sample waveform
                t_sample = app.TD_data.samples{TDindex,1};
                E_sample = app.TD_data.samples{TDindex,2};
                
                delta_t = app.TD_data.analysis{TDindex}(3);
                
                % windowing
                etl_t = app.TD_data.analysis{TDindex}(5);
                
                if isAutowindow
                    td_max = etl_t;
                    td_min = - etl_t + delta_t;
                    
%                     if isequal(funcName,'NoFunction')
%                         td_min = app.MinTimeEditField.Value;
%                     else
%                         td_min = - etl_t + delta_t;
%                     end
                else
                    td_max = app.MaxTimeEditField.Value;
                    td_min = app.MinTimeEditField.Value;
                end
                
                cutoff_low = sum(t_sample < td_min) + 1;
                cutoff_high = sum(t_sample < td_max);
                
                E_reference = E_reference(cutoff_low:cutoff_high);
                E_sample = E_sample(cutoff_low:cutoff_high);
                
                % window function
                if ~isequal(funcName,'NoFunction')
                    wf = str2func(funcName);
                    E_reference = E_reference.*...
                        window(wf,length(E_reference))';
                    E_sample = E_sample.*window(wf,length(E_sample))';
                end
                
                % fast Fourier tranform
                samNum = length(E_sample);
                N = 2^(nextpow2(length(E_sample))+upscale);
                
                FD_reference = fft(E_reference,N);
                FD_sample = fft(E_sample,N);
                
                % Calculate the double and single-sided spectra
                freqs = 0:fs/N:fs/2;
                FD_reference = FD_reference(1:N/2 + 1)/samNum;
                FD_sample = FD_sample(1:N/2 + 1)/samNum;
                
                % calculate the spectral resolution
                freqRes = fs/(N*10^12);
                app.Label.Text = num2str(freqRes,'%.3f');
                
                cutoff_low = sum(freqs < min_freq*10^12) + 1;
                cutoff_high = sum(freqs < max_freq*10^12); 
                
                FD_frequency = freqs(1:cutoff_high);                
                FD_reference = FD_reference(1:cutoff_high);
                FD_sample = FD_sample(1:cutoff_high);
                
                FDindex = cnt + FDindexNum;
                
                FTsetting = strcat(' ((',num2str(td_min,3),'-',num2str(td_max,3),'ps/'...
                    ,num2str(min_freq,3),'-',num2str(max_freq,3),'THz/'...
                    ,(funcName),'/',num2str(upscale),'upscale))');
                
                sampleID = strjoin(app.TD_data.sampleNameList{TDindex});
                FDsampleName = strcat(num2str(FDindex),':',sampleID);
                AddItem = strcat(FDsampleName,FTsetting);
                app.FD_data.sampleNameList{FDindex} = FDsampleName;
                app.FD_data.settings{FDindex} = FTsetting;
                ListBoxItem{FDindex} = AddItem;
                
                % calculate the number of etalon oscillations in the data
                etlNum = floor((td_max - delta_t)/(etl_t-delta_t));
                ref_etlNum = 0;
                
                % input FD_data.meta structure
                sampleID = matlab.lang.makeValidName(sampleID);
                app.FD_data.meta.TDanalysis{FDindex} = ...
                    app.TD_data.analysis{TDindex};
                app.FD_data.meta.thickness{FDindex} = ...
                    app.TD_data.metadata.thickness{TDindex};
                app.FD_data.meta.refThickness{FDindex} = 0;
                app.FD_data.meta.description{FDindex} = ...
                    app.TD_data.settings{TDindex}.description;
                app.FD_data.meta.timeRange{FDindex} = [td_min td_max ref_etlNum etlNum];
                
                % unwrap phase data (calling TDS-unwrap function)
                app.FD_data.frequency{FDindex} = FD_frequency;
                uw_refPhase = TDSunwrap(app,angle(FD_reference),FDindex);
                uw_samPhase = TDSunwrap(app,angle(FD_sample),FDindex);
                
                % cut off lower frequency part
                FD_frequency = FD_frequency(cutoff_low:end);
                FD_reference = FD_reference(cutoff_low:end);
                FD_sample = FD_sample(cutoff_low:end);
                uw_refPhase = uw_refPhase(cutoff_low:end);
                uw_samPhase = uw_samPhase(cutoff_low:end);
                
                
                % allocating FD_data
                app.FD_data.frequency{FDindex} = FD_frequency;
                app.FD_data.references{FDindex} = FD_reference;
                app.FD_data.samples{FDindex} = FD_sample;
                app.FD_data.ref_amplitude{FDindex} = abs(FD_reference);
                app.FD_data.ref_phase{FDindex} = uw_refPhase;
                app.FD_data.sam_amplitude{FDindex} = abs(FD_sample);
                app.FD_data.sam_phase{FDindex} = uw_samPhase;
                
                %for checking wrapped signals
                %{
                app.FD_data.ref_phase{FDindex} = angle(FD_reference);
                app.FD_data.sam_phase{FDindex} = angle(FD_sample);
                %}
                
                % calculate Transmittance
                app.FD_data.transmit_amplitude{FDindex} =...
                    abs(FD_sample)./abs(FD_reference);
                app.FD_data.transmit_phase{FDindex} = ...
                    uw_refPhase - uw_samPhase;
                
            end
            
            app.FDListListBox.Items = ListBoxItem;
            app.FDListListBox.ItemsData = (1:FDindex);
        end

        % Button pushed function: PLOT1TDButton
        function PLOT1TDButtonPushed(app, event)
            plotTD_data(app,app.UIAxes1);
        end

        % Button pushed function: PLOT1FDButton
        function PLOT1FDButtonPushed(app, event)
            plotFD_data(app,app.UIAxes3);     
        end

        % Button pushed function: PLOT2FDButton
        function PLOT2FDButtonPushed(app, event)
            plotFD_data(app,app.UIAxes4);
        end

        % Callback function
        function YscaleButtonGroupSelectionChanged(app, event)
            selectedButton = app.YscaleButtonGroup.SelectedObject;
            
            if selectedButton == "logarithm"
                app.UIAxes1.YScale = "log";
            else
                app.UIAxes1.YScale = "linear";
            end
        end

        % Value changed function: AUTOWINDOWButton
        function AUTOWINDOWButtonValueChanged(app, event)
            value = app.AUTOWINDOWButton.Value;
            if value
                app.MaxTimeEditField.Enable = "off";
                app.MinTimeEditField.Enable = "off";
            else
                app.MaxTimeEditField.Enable = "on";
                app.MinTimeEditField.Enable = "on";
            end
        end

        % Button pushed function: DELButton
        function DELButtonPushed(app, event)
            
            delItem = app.SelectionListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if size(delItem,1)
                if  sum(app.TD_select == delItem)
                    app.TD_select = app.TD_select(app.TD_select~=delItem);
                    ListBoxItemValue = app.TD_select;
                
                    for ListNo = 1:length(app.TD_select)
                        ItemNo = app.TD_select(ListNo);
                        AddItem = strjoin(app.TD_data.sampleNameList{ItemNo});
                        ListBoxItem{ListNo} = AddItem;
                    end
         
                    app.SelectionListBox.ItemsData = ListBoxItemValue;
                    app.SelectionListBox.Items = ListBoxItem;
                    
                    if ~isempty(ListBoxItemValue)
                        curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                        cursor = ListBoxItemValue(curLoc);
                        app.SelectionListBox.Value = cursor;                           
                    end
                    
                end         
            end
        end

        % Button pushed function: ALLButton
        function ALLButtonPushed(app, event)
            ListBoxItemValue = app.MeasurementListBox.ItemsData;
            ListBoxItems = app.MeasurementListBox.Items;
            
            app.TD_select = ListBoxItemValue;            
            app.SelectionListBox.ItemsData = ListBoxItemValue;
            app.SelectionListBox.Items = ListBoxItems;
        end

        % Button pushed function: PLOT2TDButton
        function PLOT2TDButtonPushed(app, event)
            plotTD_data(app,app.UIAxes2);
        end

        % Button pushed function: REMOVEButton
        function REMOVEButtonPushed(app, event)
            delItem = app.FDListListBox.Value;
            ListBoxItems = app.FDListListBox.Items;
            
            if isempty(delItem)
                return;
            end
            
            FDdataDel(app,delItem);
            ListBoxItems(delItem) = [];

            for idx = delItem:length(app.FD_data.sampleNameList)
                ListBoxID = ListBoxItems{idx};
                sampleID = app.FD_data.sampleNameList{idx};
                
                repOld = strcat(num2str(idx+1),':');
                repNew = strcat(num2str(idx),':');
                
                sampleID = replace(sampleID,repOld,repNew);
                ListBoxID = replace(ListBoxID,repOld, repNew);
                
                app.FD_data.sampleNameList{idx} = sampleID;
                ListBoxItems{idx} = ListBoxID;
            end
            
            app.FDListListBox.Items = ListBoxItems;
            app.FDListListBox.ItemsData = (1:length(ListBoxItems));
            
            app.FD_select = {};
            app.FD_select_2 = {};
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox_2.Items = {};
        end

        % Button pushed function: ALLFDButton
        function ALLFDButtonPushed(app, event)
            ListBoxItemValue = app.FDListListBox.ItemsData;
            app.FD_select = ListBoxItemValue;
            
            if isempty(ListBoxItemValue)
                return;
            end
                
            for ListNo = 1:length(app.FD_select)
                ItemNo = app.FD_select(ListNo);
                AddItem = app.FD_data.sampleNameList{ItemNo};
                ListBoxItem{ListNo} = AddItem;
            end
                       
            app.FDSelectionListBox.ItemsData = ListBoxItemValue;
            app.FDSelectionListBox.Items = ListBoxItem;
        end

        % Button pushed function: ADDFDButton
        function ADDFDButtonPushed(app, event)
            addItem = app.FDListListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if isempty(addItem)
                return;
            end
            
            if ~sum(app.FD_select == addItem)
                app.FD_select = [app.FD_select addItem];
                app.FD_select = sort(app.FD_select);
                ListBoxItemValue = app.FD_select;
                
                for ListNo = 1:length(app.FD_select)
                   ItemNo = app.FD_select(ListNo);
                   AddItem = app.FD_data.sampleNameList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             app.FDSelectionListBox.ItemsData = ListBoxItemValue;
             app.FDSelectionListBox.Items = ListBoxItem;
            
            end
            
            if ~isequal(addItem,1)
                List = app.FDListListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.FDListListBox.Value = cursor;                  
                end
            end  
        end

        % Button pushed function: DELFDButton
        function DELFDButtonPushed(app, event)
            delItem = app.FDSelectionListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if size(delItem,1)
                if  sum(app.FD_select == delItem)
                    app.FD_select = app.FD_select(app.FD_select~=delItem);
                    ListBoxItemValue = app.FD_select;
                
                for ListNo = 1:length(app.FD_select)
                   ItemNo = app.FD_select(ListNo);
                   AddItem = app.FD_data.sampleNameList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
                app.FDSelectionListBox.ItemsData = ListBoxItemValue;
                app.FDSelectionListBox.Items = ListBoxItem;
                
                if ~isempty(ListBoxItemValue)
                    curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                    cursor = ListBoxItemValue(curLoc);
                    app.FDSelectionListBox.Value = cursor;
                end
            
            end         
            end
        end

        % Value changed function: DescriptionEditField
        function DescriptionEditFieldValueChanged(app, event)
            value = app.DescriptionEditField.Value;
%             Update = app.MeasurementListBox.Value;
            MeasNum = app.MeasurementListBox.Value;
            
            if isempty(MeasNum)
                return;
            end
           
            %find corresponding sampleID for the value change
            
%             sampleID = strjoin(app.TD_data.sampleNameList{MeasNum});
%             sampleID = matlab.lang.makeValidName(sampleID);
            
            % update description
            app.TD_data.settings{MeasNum}.description = value;
        end

        % Value changed function: ThicknessEditField
        function ThicknessEditFieldValueChanged(app, event)
            value = app.ThicknessEditField.Value;
            
            if value <= 0
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'Please input a valid thickness','Invalid Thickness');
                return;
            end
            
            Update = app.MeasurementListBox.Value;
            
            if isempty(Update)
                return;
            end

            % update thickness
            TDindex = app.MeasurementListBox.Value;
            app.TD_data.metadata.thickness{TDindex} = value;
            
            % TD_data.analysis update
            TDanalysisUpdate(app,TDindex);
            
        end

        % Button pushed function: ASSIGNButtonTD
        function ASSIGNButtonTDPushed(app, event)
            assignin('base',"TD_data",app.TD_data);
        end

        % Button pushed function: ASSIGNButtonFD
        function ASSIGNButtonFDPushed(app, event)
            assignin('base',"FD_data",app.FD_data);
        end

        % Button pushed function: REMOVEALLButton
        function REMOVEALLButtonPushed(app, event)
            
            FDdataDel(app,':');         
            app.FDListListBox.Items = {};
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox_2.Items = {};
            app.FD_select = [];
            app.FD_select_2 = [];
            FD_PlotData_reset(app);
        end

        % Button pushed function: SaveData_TD
        function SaveData_TDPushed(app, event)
            
            question = "Do you want to save all data?";
            answer = questdlg(question,'Data Range','Yes','No, only selected data','cancel');
            
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            
            fullfile = strcat(filepath,filename);
            
            if isequal(answer,'Yes')
                ListItems = app.MeasurementListBox.Items;
                TD_data = app.TD_data;
            else
                if isempty(app.TD_select)
                    warning('There are no selected data.')
                    return;
                end
                
                ListItems = app.SelectionListBox.Items;
                ListIdx = app.TD_select;
                cnt = 1
                
                for Idx = ListIdx
                   TD_data.samples{cnt,1} = app.TD_data.samples{Idx,1};
                   TD_data.samples{cnt,2} = app.TD_data.samples{Idx,2};
                   TD_data.references{cnt,1} = app.TD_data.references{Idx,1};
                   TD_data.references{cnt,2} = app.TD_data.references{Idx,2};
                   TD_data.sampleNameList{cnt} = app.TD_data.sampleNameList{Idx};
                   TD_data.settings{cnt} = app.TD_data.settings{Idx};
                   TD_data.metadata.thickness{cnt} = app.TD_data.metadata.thickness{Idx};
                   TD_data.analysis{cnt} = app.TD_data.analysis{Idx}; %[Re_max, delta_t, n_eff, elt_t]
                 
                   cnt = cnt + 1;
                end
                TD_data.nSamples = length(ListIdx);

            end
            save(fullfile,'TD_data','ListItems');
        end

        % Button pushed function: LoadData_TD
        function LoadData_TDButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.mat');
            
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            fullfile = strcat(filepath,filename);
            
            TDdataDel(app);
            load(fullfile);
            app.TD_data = TD_data;
            app.MeasurementListBox.Items = ListItems;
            app.MeasurementListBox.ItemsData = (1:length(ListItems));
            app.TRANSFORMButton.Enable = true;
            
            app.FD_data.sampleNameList = {};
            app.FD_data.settings = {};
            app.FD_data.meta = {};
        end

        % Button pushed function: SaveData_FD
        function SaveData_FDButtonPushed(app, event)
            
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);
            ListItems = app.FDListListBox.Items;
            ListItems2 = app.FDSelectionListBox_2.Items;
            FD_data = app.FD_data;
            save(fullfile,'FD_data','ListItems','ListItems2');
        end

        % Button pushed function: ALLFDButton_2
        function ALLFDButton_2Pushed(app, event)
            ListBoxItemValue = app.FDListListBox.ItemsData;
            app.FD_select_2 = ListBoxItemValue;
            
            if isempty(ListBoxItemValue)
                return;
            end
                
            for ListNo = 1:length(app.FD_select_2)
                ItemNo = app.FD_select_2(ListNo);
                AddItem = app.FD_data.sampleNameList{ItemNo};
                ListBoxItem{ListNo} = AddItem;
            end
                       
            app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
            app.FDSelectionListBox_2.Items = ListBoxItem;
            
            AdvFDbuttonsEnable(app,0);
        end

        % Button pushed function: ADDFDButton_2
        function ADDFDButton_2Pushed(app, event)
            addItem = app.FDListListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if isempty(addItem)
                return;
            end
            
            if ~sum(app.FD_select_2 == addItem)
                app.FD_select_2 = [app.FD_select_2 addItem];
                app.FD_select_2 = sort(app.FD_select_2);
                ListBoxItemValue = app.FD_select_2;
                
                for ListNo = 1:length(app.FD_select_2)
                   ItemNo = app.FD_select_2(ListNo);
                   AddItem = app.FD_data.sampleNameList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
             app.FDSelectionListBox_2.Items = ListBoxItem;          
            end 
            
            if ~isequal(addItem,1)
                List = app.FDListListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.FDListListBox.Value = cursor;                  
                end
            end 
            
            AdvFDbuttonsEnable(app,0);
        end

        % Button pushed function: DELFDButton_2
        function DELFDButton_2Pushed(app, event)
            delItem = app.FDSelectionListBox_2.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if size(delItem,1)
                if  sum(app.FD_select_2 == delItem)
                    app.FD_select_2 = app.FD_select_2(app.FD_select_2~=delItem);
                    ListBoxItemValue = app.FD_select_2;
                
                for ListNo = 1:length(app.FD_select_2)
                   ItemNo = app.FD_select_2(ListNo);
                   AddItem = app.FD_data.sampleNameList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
                app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
                app.FDSelectionListBox_2.Items = ListBoxItem;
                
                if ~isempty(ListBoxItemValue)
                    curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                    cursor = ListBoxItemValue(curLoc);
                    app.FDSelectionListBox_2.Value = cursor;
                end
            
            end         
            end
        end

        % Value changed function: FDSelectionListBox_2
        function FDSelectionListBox_2ValueChanged(app, event)
            idx = app.FDSelectionListBox_2.Value;
            
            description = app.FD_data.meta.description{idx};
            
            % thickness->FD_data.meta.thickness(idx)=[sam ref]
            sam_thickness = app.FD_data.meta.thickness{idx};
            ref_thickness = app.FD_data.meta.refThickness{idx};
            ref_etlNum = app.FD_data.meta.timeRange{idx}(3);
            etlNum = app.FD_data.meta.timeRange{idx}(4);
                       
            % display in EditTextFields
            app.DescriptionEditField_FD.Value = description;
            app.RefEditField.Value = ref_thickness;
            app.SampleEditField.Value = sam_thickness;
            app.RefNMREditField.Value = ref_etlNum;
            app.SampleNMREditField.Value = etlNum;
                        
        end

        % Button pushed function: CALCULATEButton
        function CALCULATEButtonPushed(app, event)

            if isempty(app.FD_select_2)
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'There is no item to calcate in the list','Warning');
                return;
            end
            
            for FDindex = app.FD_select_2
                t_diff = abs(app.FD_data.meta.thickness{FDindex} -...
                    app.FD_data.meta.refThickness{FDindex});
                
                if isempty(app.FD_data.meta.thickness{FDindex})
                    fig = app.TerahertzSpectrumAnalyzerUIFigure;
                    ID = app.FD_data.sampleNameList{FDindex};
                    msg = strcat((ID)," doesn't have the thickness information.");
                    uialert(fig,(msg),'Calculation Aborted');
                    return;
                end
                
                c = 299792458; % the speed of light
                n_medium = 1; % refractive index of medium
                n_reference = 1; % refractive indx of the reference
                n_sample = c.*app.FD_data.transmit_phase{FDindex}./...
                    (2*pi*app.FD_data.frequency{FDindex}.*t_diff*10^-3) + 1;
                
                % calculate the absorption coefficient, the logartihm base is e.
                % the following procedures references equation two in the work by Jepsen
                % and Fischer, 2005 (doi.org/10.1364/OL.30.000029) and breaks down equation two into steps
                
                ref_factor = 4.*n_medium.*n_reference./...
                    ((n_medium + n_reference).^2);
                sam_factor = 4.*n_medium.*n_sample./...
                    ((n_medium + n_sample).^2);
                scaleFactor = ref_factor./sam_factor;
                
                scaledTransmitMag = ...
                    app.FD_data.transmit_amplitude{FDindex}.*scaleFactor;
                
                absorption = -2./(t_diff*0.1).*log(scaledTransmitMag); % unit: cm^-1
                % calcuate extinction coefficients
                % 100 is for compensating cm to m in absorption calculation
                % absorption = 4pi*f*k/c -> k = c*absorption/4pi*f
                extinction = c*100*absorption./(4*pi*app.FD_data.frequency{FDindex});

                app.FD_data.refractiveIndex{FDindex} = n_sample;
                app.FD_data.absorption{FDindex} = absorption; 
                app.FD_data.extinction{FDindex} = extinction;
                app.FD_data.stopBand{FDindex} = 0;
                
                % calculate dielectric constancts
                eReal = n_sample.^2 - extinction.^2;
                eImag = 2 * n_sample.*extinction;
                
                app.FD_data.eReal{FDindex} = eReal;
                app.FD_data.eImag{FDindex} = eImag;
                
            end
            
            % enable absorption, refractive index, dielectric constant btn
            AdvFDbuttonsEnable(app,1);
        end

        % Button pushed function: PLOT1FDButton_2
        function PLOT1FDButton_2Pushed(app, event)
            plotFD_data2(app,app.UIAxes3);
        end

        % Button pushed function: PLOT2FDButton_2
        function PLOT2FDButton_2Pushed(app, event)
            plotFD_data2(app,app.UIAxes4);
        end

        % Selection changed function: PlotDataButtonGroup
        function PlotDataButtonGroupSelectionChanged(app, event)
            selectedButton = app.PlotDataButtonGroup.SelectedObject.Text;
            
            if size(selectedButton,1) == 2;
                selectedButton = strjoin(selectedButton(1));
            end
            
            switch selectedButton
                case 'TRANSMITTANCE'
                    app.YscaleButtonGroup_2.Visible = true;
                    app.MagPhaseButtonGroup_2.Visible = true;
                    app.RealImagButtonGroup.Visible = false;
                
                case 'DIELECTRIC'
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false;
                    app.RealImagButtonGroup.Visible = true;
                    
                case 'REFRACTIVE'
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false;
                    app.RealImagButtonGroup.Visible = true;
                    
                otherwise
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false; 
                    app.RealImagButtonGroup.Visible = false;
            end
            
        end

        % Button pushed function: optimisationButton
        function optimisationButtonButtonPushed(app, event)
              dataList = app.FD_select_2;
              listItems = app.FDSelectionListBox_2.Items;
              
              app.SampleCase1DropDown.Items = listItems;
              app.SampleCase1DropDown.ItemsData = dataList;
              app.SampleCase2DropDown.Items = listItems;
              app.SampleCase2DropDown.ItemsData = dataList;
              app.SampleCaseDropDown.Items = listItems;
              app.SampleCaseDropDown.ItemsData = dataList;
              app.OPTIMIZEALLPanel.Visible = 0;
              
              app.TabGroup.SelectedTab = app.TabGroup.Children(3);
            
        end

        % Button pushed function: FINDTHICKNESSButton
        function FINDTHICKNESSButtonPushed(app, event)
 
            if isempty(app.MeasurementListBox.Value)
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'Select item in the measurment list','Warning');
                return;
            end
            
            % Disable FIND THICKNESS button while dialog is open
%             app.FINDTHICKNESSButton.Enable = 'off';
            
            % Find the selected item in the list box
            TD_index = app.MeasurementListBox.Value;
            refT = app.TD_data.references{TD_index,1};
            refE = app.TD_data.references{TD_index,2};
            samT = app.TD_data.samples{TD_index,1};
            samE = app.TD_data.samples{TD_index,2};
            pksDetail = app.TD_data.analysis{TD_index};
            ID = strjoin(app.TD_data.sampleNameList{TD_index});
            
            app.DialogApp = T_Finder(app,refT,refE,samT,samE,pksDetail,ID);
            
%             app.FINDTHICKNESSButton.Enable = 'on';
        end

        % Button pushed function: PLOTTHICKNESSESButton
        function PLOTTHICKNESSESButtonPushed(app, event)
          
            if isempty(app.MeasurementListBox.Value)
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'No items to plot','Warning');
                return;
            end
            
            % Disable FIND THICKNESS button while dialog is open
            app.PLOTTHICKNESSESButton.Enable = 'off';
            sampleNames = app.TD_data.sampleNameList;
            thicknesses = app.TD_data.metadata.thickness;
            analysisData = app.TD_data.analysis;
            fileName = app.FILESEditField.Value;
            
            
            app.DialogApp = T_Fitter(app,sampleNames,thicknesses, analysisData, fileName);
            
            app.PLOTTHICKNESSESButton.Enable = "on";
        end

        % Button pushed function: PLOTREFRACTIVEINDICESButton
        function PLOTREFRACTIVEINDICESButtonPushed(app, event)
            % Create UIFigure and hide until all components are created
            fig = uifigure('Visible', 'on');
            fig.Position = [100 100 1100 600];
            fig.Name = 'SAMPLE REFRACTIVE INDEX (BASED ON THE GROUP VELOCITY)';

            % Create UIAxes
            ax = uiaxes(fig);
            title(ax, 'REFRACTIVE INDEX')
            xlabel(ax, 'SAMPLE LIST')
            ylabel(ax, 'REFRACTIVE INDEX (n)')
            ax.Position = [20 10 1065 550];

            labels= {};
            idxNum = app.TD_data.nSamples;
            tList = [];
            
            for idx=1:idxNum
                labels{idx} = strrep(strjoin(app.TD_data.sampleNameList{idx}),'_',' ');
                tList =[tList app.TD_data.analysis{idx}(4)];
            end
            
            ax.XTick = (1:idxNum);
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
            plot(ax,(1:idxNum),tList,'-o');
        end

        % Value changed function: LEGENDButton_2
        function LEGENDButton_2ValueChanged(app, event)
            value = app.LEGENDButton_2.Value;
            if isequal(value,0)
                legend(app.UIAxes1,"hide");
                legend(app.UIAxes2,"hide");
            else
                legend(app.UIAxes1,"show");
                legend(app.UIAxes2,"show");
            end
        end

        % Value changed function: JETCOLORMAPButton
        function JETCOLORMAPButtonValueChanged(app, event)
            value = app.JETCOLORMAPButton.Value;
            idxNum = length(app.TD_select);
            if isequal(value,1)
                app.UIAxes1.ColorOrder = flipud(jet(idxNum));
                app.UIAxes2.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes1.ColorOrder = lines(idxNum);
                app.UIAxes2.ColorOrder = lines(idxNum);
            end
        end

        % Value changed function: LEGENDButton
        function LEGENDButtonValueChanged(app, event)
            value = app.LEGENDButton.Value;
             if isequal(value,0)
                legend(app.UIAxes3,"hide");
                legend(app.UIAxes4,"hide");
            else
                legend(app.UIAxes3,"show");
                legend(app.UIAxes4,"show");
            end
            
        end

        % Value changed function: JETCOLORMAPButton_2
        function JETCOLORMAPButton_2ValueChanged(app, event)
            value = app.JETCOLORMAPButton_2.Value;
            idxNum = length(app.FD_select_2);
            if isequal(value,1)
                app.UIAxes3.ColorOrder = flipud(jet(idxNum));
                app.UIAxes4.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes3.ColorOrder = lines(idxNum);
                app.UIAxes4.ColorOrder = lines(idxNum);
            end
        end

        % Button pushed function: BANDWIDTHFILTERButton
        function BANDWIDTHFILTERButtonPushed(app, event)
            
            if isempty(app.FDSelectionListBox_2.Value)
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'Select an item in the FD Select list','Warning');
                return;
            end
            
            app.CALCULATEButtonPushed(app);
            
            % Disable CUT_OFF button while dialog is open
            app.BANDWIDTHFILTERButton.Enable = 'off';
            
            % Find the selected item in the list box
            FD_index = app.FDSelectionListBox_2.Value;
            refF = app.FD_data.frequency{FD_index};
            refE = app.FD_data.ref_amplitude{FD_index};
            samA = app.FD_data.absorption{FD_index};
            n_eff = app.FD_data.refractiveIndex{FD_index};
            thickness = app.FD_data.meta.thickness{FD_index};
            ID = strjoin(app.FD_data.sampleNameList(FD_index));
            stopBand = app.FD_data.stopBand{FD_index};
            
            app.DialogApp = DR_Filter(app,refF,refE,samA,n_eff,thickness,stopBand,ID);
            
            app.BANDWIDTHFILTERButton.Enable = 'on';
        end

        % Button pushed function: PLOTNEWFDButton
        function PLOTNEWFDButtonPushed(app, event)
            plotFD_dataNew(app);
        end

        % Button pushed function: dataManipulationButton
        function dataManipulationButtonPushed(app, event)
            dataList = app.FD_select_2;
            dataList2 = app.FDSelectionListBox_2.Items;
            dataList2v = app.FDSelectionListBox_2.ItemsData;
            app.AvailableDataSetEditField.Value = num2str(dataList);
            app.data3DDropDown.Items = dataList2;
            app.data3DDropDown.ItemsData = dataList2v;
            app.DM_data.set = 'FD_data';
            itemList = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.ADropDown.Items = itemList;
            app.BDropDown.Items = itemList;
            app.CDropDown.Items = itemList;
            app.TabGroup.SelectedTab = app.TabGroup.Children(4);
        end

        % Button pushed function: ALLDATAButton
        function ALLDATAButtonPushed(app, event)
            dataList = app.FD_select_2;
            app.SourceDataSetEditField.Value = num2str(dataList);
        end

        % Button pushed function: CALCULATEButton_2
        function CALCULATEButton_2Pushed(app, event)
            dataList = str2num(app.SourceDataSetEditField.Value);
            app.NumberofDataEditField.Value = length(dataList);
            
            Func = app.YaxisDataEditField.Value;
            
            if isempty(Func)
                return;
            end
            
            dataSrc = app.DM_data.set;
            
            for idx = dataList
                A = app.ADropDown.Value;
                B = app.BDropDown.Value;
                C = app.CDropDown.Value;
                
                A = app.(dataSrc).(A){idx};
                B = app.(dataSrc).(B){idx};
                C = app.(dataSrc).(C){idx};
                
                output = eval([(Func)]);
                app.DM_data.base{idx} = output;
            end
        end

        % Button pushed function: PLOT1Button
        function PLOT1ButtonPushed(app, event)
            
%             if ~exist('app.FD_data.DM1')
%                 display("no data to plot")
%                 return;
%             end
            
            ax = app.UIAxes9;
            
            cla(ax);
            dataList = str2num(app.SourceDataSetEditField.Value);
            ax.YLabel.String = app.YaxisDataEditField.Value;
            hold(ax,"on");
            
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;
            
            for idx = dataList
                plot(ax,app.(dataSrc).(xData){idx},app.DM_data.base{idx},"LineWidth",1);
            end
            
            A = app.ADropDown.Value;
            B = app.BDropDown.Value;
            C = app.CDropDown.Value;
            ylabel = strrep(app.YaxisDataEditField.Value,'A',A);
            ylabel = strrep(ylabel,'B',B);
            ylabel = strrep(ylabel,'C',C);
            
            ax.reset;
%             ax.ColorOrder = flipud(jet(length(dataList)));
            ax.YLabel.String = ylabel;
            ax.XLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
            
        end

        % Button pushed function: DISPLAYXLINESButton
        function DISPLAYXLINESButtonPushed(app, event)
            ax = app.UIAxes9;
            selectedFreq = str2num(app.GetDatafromFrequencyTHzEditField.Value);
            
            for idx = selectedFreq
                idxLoc = idx*10^12;
                xlineName = strcat(num2str(idx)," THz");
                xline(ax,idxLoc,'--r',xlineName);
            end
        end

        % Button pushed function: REARRANGEDATAButton
        function REARRANGEDATAButtonPushed(app, event)
            dataList = str2num(app.SourceDataSetEditField.Value);
            freqList = str2num(app.GetDatafromFrequencyTHzEditField.Value);
            cnt1 = 0;
            
            for freqIdx = freqList
                dmData = [];
                xtempList = [];
                cnt1 = cnt1 +1;
                cnt2 = length(dataList);
                
                for idx = dataList
                    freq = app.FD_data.frequency{idx};
                    freqTHz = freqIdx * 10^12;
                    freqLoc = find(freq > freqTHz,1);
                    dmData = [app.DM_data.base{idx}(freqLoc) dmData];
                    
                    xList = app.FD_data.sampleNameList{idx};
                    comLoc = strfind(xList,':');
                    barLoc = strfind(xList,'_');
                    preName = xList(comLoc+1:barLoc-1);
                    xTemp = xList(barLoc + 1:end);
                    xtempList{cnt2} = xTemp;
                    cnt2 = cnt2 - 1;
                end
                
                app.MeasurementEditField.Value = preName;
                dataFreq = strcat(num2str(freqIdx)," THz");
                app.DM_data.freq{cnt1} = dataFreq;
                app.DM_data.values{cnt1} = dmData;
            end
            
            app.DM_count = cnt1;
            app.DM_data.tempList = xtempList;
            app.XaxisDataEditField.Value = cell2mat(xtempList);
        end

        % Button pushed function: PLOT2Button
        function PLOT2ButtonPushed(app, event)
            ax = app.UIAxes10;
            lgd = {};
            labels = app.DM_data.tempList;
            numLabels = length(labels);
            
            cla(ax)
            hold(ax,"on")
            
            for idx = 1:app.DM_count
                lgd{idx} = app.DM_data.freq{idx};
                yData = app.DM_data.values{idx};
                plot(ax,yData,'--o','LineWidth',1);
            end
            
            ax.reset;
            ax.XTick = (1:numLabels);
            ax.XLabel.String = app.XLabelEditField.Value;
            ax.Title.String = app.MeasurementEditField.Value;
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
            legend(ax,lgd,'Interpreter','none');
            hold(ax,"off")
        end

        % Button pushed function: ASSIGNButtonDM
        function ASSIGNButtonDMPushed(app, event)
            assignin('base',"DM_data",app.DM_data);
        end

        % Button pushed function: REARRANGEDATAButton_2
        function REARRANGEDATAButton_2Pushed(app, event)
            dataList = str2num(app.SourceDataSetEditField.Value);
            cnt = length(dataList);
            
            app.findDMPeaks;
         
            % arrange x-axis data
            for idx = dataList
                xList = app.FD_data.sampleNameList{idx};
                comLoc = strfind(xList,':');
                barLoc = strfind(xList,'_');
                preName = xList(comLoc+1:barLoc-1);
                xTemp = xList(barLoc + 1:end);
                xtempList{cnt} = xTemp;
                cnt = cnt - 1;
            end
           
            app.MeasurementEditField_2.Value = preName;
            app.DM_data.tempList = xtempList;
            app.XaxisDataEditField_2.Value = cell2mat(xtempList);
        end

        % Callback function
        function MinPeakProminenceSliderValueChanged(app, event)
            value = app.MinPeakProminenceSlider.Value;
            app.MinPeakProminenceEditField.Value = value;
            findDMPeaks(app);
        end

        % Callback function
        function EditFieldValueChanged(app, event)
            value = app.MinPeakProminenceEditField.Value;
            app.MinPeakProminenceSlider.Value = value;
            findDMPeaks(app);
        end

        % Value changed function: LowerLimitTHzEditField
        function LowerLimitTHzEditFieldValueChanged(app, event)
            value = app.LowerLimitTHzEditField.Value;
            findDMPeaks(app);
        end

        % Button pushed function: PLOT2Button_2
        function PLOT2Button_2Pushed(app, event)
            ax = app.UIAxes10;
            labels = app.DM_data.tempList;
            numLabels = length(labels);
            
            cla(ax)
            
            yData = app.DM_data.freqMat;
            plot(ax,(1:numLabels),yData,'--o','LineWidth',1);
                        
            ax.reset;
            ax.XTick = (1:numLabels);
            ax.XLabel.String = app.XLabelEditField_2.Value;
            ax.Title.String = app.MeasurementEditField_2.Value;
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
        end

        % Button pushed function: CLEARMEMORYButton
        function CLEARMEMORYButtonPushed(app, event)
%               fig = app.TerahertzSpectrumAnalyzerUIFigure;
                question = "Do you want to clear memory?";
                answer = questdlg(question,'Warning');
                
            if answer == 'Yes'
                app.TD_data = [];
                app.FD_data = [];
                app.OP_data = [];
                app.DM_data = [];
                app.TD_select = [];
                app.FD_select = [];
                app.FD_select_2 = [];
                app.MeasurementListBox.Items = {};
                app.SelectionListBox.Items = {};
                app.FDListListBox.Items = {};
                app.FDSelectionListBox.Items = {};
                app.FDSelectionListBox_2.Items = {};
                app.filename = [];
                app.fullpathname = [];
                app.PRJ_count = 0;
                app.FILESEditField.Value = '';
                app.DEBUGMsgLabel.Text = '';
            end
        end

        % Button pushed function: curveFittingButton
        function curveFittingButtonPushed(app, event)
            app.CF_data.T.sampleID = app.FDSelectionListBox_2.Items;
            app.CF_data.T.itemIdx = app.FDSelectionListBox_2.ItemsData;
            app.StartatDropDown.Items = cellstr(num2str(app.FDSelectionListBox_2.ItemsData'));
            tNum = length(app.CF_data.T.itemIdx);
            zeroCell(1:tNum,1) = {0};
            app.CF_data.T.B = zeroCell;
            app.CF_data.T.b = zeroCell;
            app.CF_data.T.A1 = zeroCell;
            app.CF_data.T.x1 = zeroCell;
            app.CF_data.T.g1= zeroCell;
            app.CF_data.T.A2 = zeroCell;
            app.CF_data.T.x2 = zeroCell;
            app.CF_data.T.g2= zeroCell;
            app.CF_data.T.A3 = zeroCell;
            app.CF_data.T.x3 = zeroCell;
            app.CF_data.T.g3= zeroCell;
            app.CF_data.T.AP = zeroCell;
            app.CF_data.T.CP = zeroCell;
            app.CF_data.T.Per = zeroCell;
            app.CF_data.set = 'FD_data';
            updateTable(app);
            app.TabGroup.SelectedTab = app.TabGroup.Children(5);            
        end

        % Button pushed function: PLOTALLButton
        function PLOTALLButtonPushed(app, event)
            ax = app.UIAxes11;
            cla(ax)
            
            dataType = app.CFydataDropDown.Value;
            dataSrc = app.CF_data.set;
            yDataMin = app.(dataSrc).(dataType){1};
            
            for idx = 1:length(app.CF_data.T.itemIdx)
                xData = app.(dataSrc).frequency{idx} * 10^-12;
                yData = app.(dataSrc).(dataType){idx};
                yDataMin = min(yDataMin,yData);
                hold(ax,"on")
                plot(ax,xData,yData,'LineWidth',1);
            end
            
            app.CF_data.yDataMin = yDataMin;
        end

        % Callback function
        function SwitchValueChanged(app, event)
            value = app.Switch.Value;
            if value == "On"
                B = app.BSlider.Value;
                app.BEditField.Value = B;
                b = app.bSlider.Value;
                app.GAAdjustbEditField.Value = b;
                updateCFPlot(app);
            end
        end

        % Button pushed function: ASSIGNButtonDM_2
        function ASSIGNButtonDM_2Pushed(app, event)
            assignin('base',"CF_data",app.CF_data);
        end

        % Callback function
        function ContantCEditFieldValueChanged(app, event)
            updateCFPlot(app);
        end

        % Value changed function: MinPeakProminenceEditField
        function MinPeakProminenceEditFieldValueChanged(app, event)
            findDMPeaks(app);
        end

        % Value changed function: PeakNumSpinner
        function PeakNumSpinnerValueChanged(app, event)
            findDMPeaks(app);
        end

        % Button pushed function: LoadData_FD
        function LoadData_FDButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.mat');
            
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            fullfile = strcat(filepath,filename);
            
            load(fullfile);
            FDdataDel(app,:);
            app.FD_data = FD_data;
            app.FDListListBox.Items = ListItems;
            app.FDListListBox.ItemsData = (1:length(ListItems));
            app.FDSelectionListBox_2.Items = ListItems;
            app.FDSelectionListBox_2.ItemsData = (1:length(ListItems));
        end

        % Value changed function: SampleCase1DropDown
        function SampleCase1DropDownValueChanged(app, event)
            idx = app.SampleCase1DropDown.Value;
          
            description = app.FD_data.meta.description{idx};
            sam_thickness = app.FD_data.meta.thickness{idx};
            ref_thickness = app.FD_data.meta.refThickness{idx};
            ref_etlNum = app.FD_data.meta.timeRange{idx}(3);
            etlNum = app.FD_data.meta.timeRange{idx}(4);
            
            % display in EditTextFields
            app.case1DescriptionEditField.Value = description;
            app.case1RefTEditField.Value = ref_thickness;
            app.case1SampleTEditField.Value = sam_thickness;
            app.case1RefetlNumEditField.Value = ref_etlNum;
            app.case1SampleetlNumEditField.Value = etlNum;
        end

        % Value changed function: SampleCase2DropDown
        function SampleCase2DropDownValueChanged(app, event)
            idx = app.SampleCase2DropDown.Value;
          
            description = app.FD_data.meta.description{idx};
            sam_thickness = app.FD_data.meta.thickness{idx};
            ref_thickness = app.FD_data.meta.refThickness{idx};
            ref_etlNum = app.FD_data.meta.timeRange{idx}(3);
            etlNum = app.FD_data.meta.timeRange{idx}(4);
            
            % display in EditTextFields
            app.case2DescriptionEditField.Value = description;
            app.case2RefTEditField.Value = ref_thickness;
            app.case2SampleTEditField.Value = sam_thickness;
            app.case2RefetlNumEditField.Value = ref_etlNum;
            app.case2SampleetlNumEditField.Value = etlNum;
        end

        % Button pushed function: FITCASE1Button
        function FITCASE1ButtonPushed(app, event)
            idx = app.SampleCase1DropDown.Value;
            app.ASSIGNButtonOP.Enable = 0;
            algorithmSearch(app,idx,1);   
            app.ASSIGNButtonOP.Enable = 1;
        end

        % Button pushed function: FITCASE2Button
        function FITCASE2ButtonPushed(app, event)
            idx = app.SampleCase2DropDown.Value;
            app.ASSIGNButtonOP.Enable = 0;
            algorithmSearch(app,idx,2);
            app.ASSIGNButtonOP.Enable = 1;
        end

        % Button pushed function: ASSIGNButtonOP
        function ASSIGNButtonOPPushed(app, event)
            assignin('base',"OP_data",app.OP_data);
        end

        % Button pushed function: RESETOP_DATAButton
        function RESETOP_DATAButtonPushed(app, event)
            app.OP_data = [];
            app.SampleCase1DropDown.Items = {};
            app.SampleCase2DropDown.Items = {};
            app.SampleCaseDropDown.Items = {};
            app.OPTIMIZEALLPanel.Visible = 0;
        end

        % Button pushed function: OPTIMIZEALLButton
        function OPTIMIZEALLButtonPushed(app, event)
            dataList = app.SampleCase1DropDown.ItemsData;
            app.ASSIGNButtonOP.Enable = 0;
            app.RESETOP_DATAButton.Enable = 0;
            drawnow
            
            for idx = dataList
                algorithmSearch(app,idx,3);
            end
            
            app.ASSIGNButtonOP.Enable = 1;
            app.RESETOP_DATAButton.Enable = 1;
            app.OPTIMIZEALLPanel.Visible = 1;
        end

        % Button pushed function: COMPARECASE1AND2Button
        function COMPARECASE1AND2ButtonPushed(app, event)
            idx1 = app.SampleCase1DropDown.Value;
            idx2 = app.SampleCase2DropDown.Value;
            
            freq1 = app.OP_data.frequency{idx1}*10^-12;
            freq2 = app.OP_data.frequency{idx2}*10^-12;
            n1 = app.OP_data.refractiveIndex{idx1};
            n2 = app.OP_data.refractiveIndex{idx2};
            k1 = app.OP_data.extinction{idx1};
            k2 = app.OP_data.extinction{idx2};
            f1 = app.OP_data.fitness{idx1};
            f2 = app.OP_data.fitness{idx2};
            
            if ~isequal(size(n1),size(n2))
               fig = app.TerahertzSpectrumAnalyzerUIFigure;
               uialert(fig,'Both data do not match their spectral resolutions. Comparison aborted.','Warning');
               return;
            end
            
            n12 = abs(n1 - n2);
            
            
            ax1 = app.UIAxes5;
            ax2 = app.UIAxes6;
            ax3 = app.UIAxes7;
            ax4 = app.UIAxes8;
            ax4.Visible = 1;
                
            cla(ax1)
            cla(ax2)
            cla(ax3)
            cla(ax4)
            
            plot(ax1,freq1,f1);
            hold(ax1,"on")
            plot(ax1,freq2,f2);
            
            plot(ax2,freq1,n1);
            hold(ax2,"on")
            plot(ax2,freq2,n2);
            
            plot(ax3,freq1,k1);
            hold(ax3,"on")
            plot(ax3,freq2,k2);
            
            plot(ax4,freq1,n12);
            
            lgd1 = legend(ax1,'case 1','case 2');
            lgd2 = legend(ax2,'case 1','case 2');
            lgd3 = legend(ax3,'case 1','case 2');
            
            title(lgd1,'');
            title(lgd2,'');
            title(lgd3,'');
            
            hold(ax1,"off")
            hold(ax2,"off")
            hold(ax3,"off")
        end

        % Value changed function: SampleCaseDropDown
        function SampleCaseDropDownValueChanged(app, event)
            caseNum = app.SampleCaseDropDown.Value;
            dataType = app.PlotDropDown.Value;
            plotOptData(app,caseNum,dataType);            
        end

        % Value changed function: PlotDropDown
        function PlotDropDownValueChanged(app, event)
            caseNum = app.SampleCaseDropDown.Value;
            dataType = app.PlotDropDown.Value;
            plotOptData(app,caseNum,dataType);
        end

        % Button pushed function: DATAMANIPULATIONButton
        function DATAMANIPULATIONButtonPushed(app, event)
            dataList = app.SampleCaseDropDown.ItemsData;
            dataListname = app.SampleCase1DropDown.Items;
            app.data3DDropDown.Items = dataListname;
            app.data3DDropDown.ItemsData = dataList;
            app.AvailableDataSetEditField.Value = num2str(dataList);
            app.DM_data.set = 'OP_data';
            itemList = {'frequency','refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.ADropDown.Items = itemList;
            app.BDropDown.Items = itemList;
            app.CDropDown.Items = itemList;
            app.TabGroup.SelectedTab = app.TabGroup.Children(4);  
        end

        % Value changed function: JETCOLORMAPButton_DM
        function JETCOLORMAPButton_DMValueChanged(app, event)
            value = app.JETCOLORMAPButton_DM.Value;
            dataList = str2num(app.SourceDataSetEditField.Value);
            idxNum = length(dataList);
            if isequal(value,1)
                app.UIAxes9.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes9.ColorOrder = lines(idxNum);
            end
        end

        % Button pushed function: CURVEFITTINGButton
        function CURVEFITTINGButtonPushed(app, event)
            itemList = app.SampleCaseDropDown.Items;
            itemData = app.SampleCaseDropDown.ItemsData;
            app.CF_data.set = 'OP_data';
            app.CF_data.T.sampleID = itemList;
            app.CF_data.T.itemIdx = itemData;
            app.StartatDropDown.Items = cellstr(num2str(itemData'));
            tNum = length(app.CF_data.T.itemIdx);
            tNum = length(app.CF_data.T.itemIdx);
            zeroCell(1:tNum,1) = {0};
            app.CF_data.T.B = zeroCell;
            app.CF_data.T.b = zeroCell;
            app.CF_data.T.A1 = zeroCell;
            app.CF_data.T.x1 = zeroCell;
            app.CF_data.T.g1= zeroCell;
            app.CF_data.T.A2 = zeroCell;
            app.CF_data.T.x2 = zeroCell;
            app.CF_data.T.g2= zeroCell;
            app.CF_data.T.A3 = zeroCell;
            app.CF_data.T.x3 = zeroCell;
            app.CF_data.T.g3= zeroCell;
            app.CF_data.T.AP = zeroCell;
            app.CF_data.T.CP = zeroCell;
            app.CF_data.T.Per = zeroCell;
            updateTable(app);
            app.TabGroup.SelectedTab = app.TabGroup.Children(5);  
        end

        % Button pushed function: BASELINEFITButton
        function BASELINEFITButtonPushed(app, event)
            fitAlgorithm = app.AlgorithmDropDown.Value;

           if ~isfield(app.CF_data.T,'selected')
               fig = app.TerahertzSpectrumAnalyzerUIFigure;
               uialert(fig,'Select an item in the table.','Warning');
               return;
           end
           
           idx = app.CF_data.T.selected;
           findPowerLaw(app,idx);
  
           % find peaks
           if ~isequal(fitAlgorithm,'b')
               findCurvePeaks(app,idx,1);    
               app.TabGroup2.SelectedTab = app.TabGroup2.Children(1);
           else
               dispCurvePeaks(app,idx);
           end
        end

        % Cell selection callback: UITable
        function UITableCellSelection(app, event)
            indices = event.Indices;
            
            idx = indices(1);
            app.CF_data.T.selected = idx;
            dataType = app.CFydataDropDown.Value;
            dataSrc = app.CF_data.set;
            xData = app.(dataSrc).frequency{idx} * 10^-12;
            yData = app.(dataSrc).(dataType){idx};
            app.CF_data.xData = xData;
            app.CF_data.yData = yData;
            cla(app.UIAxes12)

            updateCFPlot(app);      
        end

        % Value changed function: PeakMinprominenceSlider
        function PeakMinprominenceSliderValueChanged(app, event)
            value = app.PeakMinprominenceSlider.Value;
            app.PeakMinPromEditField.Value = value;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,1);            
        end

        % Value changed function: PeakMinPromEditField
        function PeakMinPromEditFieldValueChanged(app, event)
            value = app.PeakMinPromEditField.Value;
            app.PeakMinprominenceSlider.Value = value;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,1);
        end

        % Button pushed function: CURVEFITButton
        function CURVEFITButtonPushed(app, event)
            pkNum = 1;
            idx = app.CF_data.T.selected;
            fitCurvePeaks(app,idx,pkNum);
            app.TabGroup2.SelectedTab = app.TabGroup2.Children(2);
        end

        % Button pushed function: AUTOCURVEFITButton
        function AUTOCURVEFITButtonPushed(app, event)
            totalPkNum = str2num(app.PeakNumberDropDown.Value);
            dataType = app.CFydataDropDown.Value;
            dataSrc = app.CF_data.set;
            idxEnd = length(app.CF_data.T.itemIdx);
            idxStart = str2num(app.StartatDropDown.Value);
            
            for idx = idxStart:idxEnd
                xData = app.(dataSrc).frequency{idx} * 10^-12;
                yData = app.(dataSrc).(dataType){idx};
                
                % curve fit progress indicator
                progrs = idx/idxEnd*100;
                progrs = num2str(progrs,'%.0f');
                msg = strcat('CurveFit progress: ',progrs,"%");
                app.DEBUGMsgLabel.Text = msg;
                drawnow
                
                app.CF_data.xData = xData;
                app.CF_data.yData = yData;
                
                updateCFPlot(app);
                
                findPowerLaw(app,idx);
                
                for pkNum = 1:totalPkNum
                    findCurvePeaks(app,idx,pkNum);
                    fitCurvePeaks(app,idx,pkNum);
                end
            end
            
            % subtract fit Lorentz curves to find a more precise base-line
            fitCurveSum = app.CF_data.fitCurveSum{idx};
            yData2 = yData - fitCurveSum;
            plot(app.UIAxes11,xData,yData2,'--r');
            
            
            % update plot panel
            dataList = {'itemIdx', 'B','b','A1','x1','g1','A2','x2','g2','A3','x3','g3'};
            xSet = [1];
            
            for cnt= 1:totalPkNum
                xSet = [xSet 3*cnt+2];
            end
            
            xList = dataList(xSet);
            yList = dataList(2:3*(totalPkNum+1));
            yList{length(yList)+1} = 'AP';
            yList{length(yList)+1} = 'CP';
            yList{length(yList)+1} = 'Per';
            
            app.xaxisdataDropDown.Items = xList;
            app.yaxisdataDropDown.Items = yList;            
        end

        % Button pushed function: CURVEFITButton_2
        function CURVEFITButton_2Pushed(app, event)
            pkNum = 2;
            idx = app.CF_data.T.selected;
            fitCurvePeaks(app,idx,pkNum);
            app.TabGroup2.SelectedTab = app.TabGroup2.Children(3);
        end

        % Button pushed function: CURVEFITButton_3
        function CURVEFITButton_3Pushed(app, event)
            pkNum = 3;
            idx = app.CF_data.T.selected;
            fitCurvePeaks(app,idx,pkNum);
        end

        % Button pushed function: PLOTButton
        function PLOTButtonPushed(app, event)
            ax = app.UIAxes13;
            cla(ax)
            
            xDataType = app.xaxisdataDropDown.Value;
            yDataType = app.yaxisdataDropDown.Value;
            xData = app.CF_data.T.(xDataType)';
            yData = app.CF_data.T.(yDataType)';
            
            if ~isequal(xDataType,'itemIdx')
                plot(ax,cell2mat(xData),cell2mat(yData),'--o');
            else
                xData = (1:length(yData));
                plot(ax,xData,cell2mat(yData),'--o');
            end
            

            
        end

        % Button pushed function: PLOT1_3DButton
        function PLOT1_3DButtonPushed(app, event)
            ax = app.UIAxes9;
            idx = app.data3DDropDown.Value;
            
            if isequal(idx,'noavailabledata')
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'Import data set before using this function.','Warning');
                return;
            end
            
            cla(ax);
            dataList = str2num(app.SourceDataSetEditField.Value);
            hold(ax,"on");
            
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;

            plot3(ax,app.(dataSrc).frequency{idx},app.(dataSrc).(xData){idx},app.DM_data.base{idx},"LineWidth",1);
            
            A = app.ADropDown.Value;
            B = app.BDropDown.Value;
            C = app.CDropDown.Value;
            
            zlabel = strrep(app.YaxisDataEditField.Value,'A',A);
            zlabel = strrep(zlabel,'B',B);
            zlabel = strrep(zlabel,'C',C);
            
            ax.reset;
            ax.XLabel.String = "Frequency";
            ax.ZLabel.String = zlabel;
            ax.YLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
        end

        % Value changed function: LowerboundaryEditField_2
        function LowerboundaryEditField_2ValueChanged(app, event)
            value = app.LowerboundaryEditField_2.Value;
            pkNum = 2;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,pkNum);
        end

        % Value changed function: UpperboundaryEditField_2
        function UpperboundaryEditField_2ValueChanged(app, event)
            value = app.UpperboundaryEditField_2.Value;
            pkNum = 2;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,pkNum);
        end

        % Value changed function: PeakMinprominenceSlider_2
        function PeakMinprominenceSlider_2ValueChanged(app, event)
            value = app.PeakMinprominenceSlider_2.Value;
            app.PeakMinPromEditField_2.Value = value;
            pkNum = 2;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,pkNum);
        end

        % Value changed function: LowerboundaryEditField_3
        function LowerboundaryEditField_3ValueChanged(app, event)
            value = app.LowerboundaryEditField_3.Value;
            pkNum = 3;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,pkNum);
        end

        % Value changed function: UpperboundaryEditField_3
        function UpperboundaryEditField_3ValueChanged(app, event)
            value = app.UpperboundaryEditField_3.Value;
            pkNum = 3;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,pkNum);
        end

        % Value changed function: PeakMinprominenceSlider_3
        function PeakMinprominenceSlider_3ValueChanged(app, event)
            value = app.PeakMinprominenceSlider_3.Value;
            app.PeakMinPromEditField_2.Value = value;
            pkNum = 3;
            idx = app.CF_data.T.selected;
            findCurvePeaks(app,idx,pkNum);
        end

        % Button pushed function: XandYDATAASSIGNButton
        function XandYDATAASSIGNButtonPushed(app, event)
            assignin('base',"xData",app.CF_data.xData);
            assignin('base',"yData",app.CF_data.yData);
        end

        % Button pushed function: LOADFITFCNButton
        function LOADFITFCNButtonPushed(app, event)
            [filename, pathname] = uigetfile('*.m');

            if isequal(filename,0)||isequal(pathname,0)
                return;          
            end
            
            app.FitFcnEditField.Value = filename;
            
        end

        % Button pushed function: SAVEDATAButton
        function SAVEDATAButtonPushed(app, event)
            
            % TD_data save
            question = "Do you want to save all data?";
            answer = questdlg(question,'Data Range','Yes','No, only selected data','cancel');
            
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            
            fullfile = strcat(filepath,filename);
            
            if isequal(answer,'Yes')
                ListItems = app.MeasurementListBox.Items;
                TD_data = app.TD_data;
            else
                if isempty(app.TD_select)
                    warning('There are no selected data.')
                    return;
                end
                
                ListItems = app.SelectionListBox.Items;
                ListIdx = app.TD_select;
                cnt = 1
                
                for Idx = ListIdx
                   TD_data.samples{cnt,1} = app.TD_data.samples{Idx,1};
                   TD_data.samples{cnt,2} = app.TD_data.samples{Idx,2};
                   TD_data.references{cnt,1} = app.TD_data.references{Idx,1};
                   TD_data.references{cnt,2} = app.TD_data.references{Idx,2};
                   TD_data.sampleNameList{cnt} = app.TD_data.sampleNameList{Idx};
                   TD_data.settings{cnt} = app.TD_data.settings{Idx};
                   TD_data.metadata.thickness{cnt} = app.TD_data.metadata.thickness{Idx};
                   TD_data.analysis{cnt} = app.TD_data.analysis{Idx};
                 
                   cnt = cnt + 1;
                end
                TD_data.nSamples = length(ListIdx);

            end
            
            save(fullfile,'TD_data','TD_ListItems');
            
            % FD_data save
            FD_ListItems = app.FDListListBox.Items;
            FD_ListItems2 = app.FDSelectionListBox_2.Items;
            FD_data = app.FD_data;
            save(fullfile,'FD_data','FD_ListItems','FD_ListItems2');
            
            % OP_data save
            OP_ListItems = app.SampleCaseDropDown.items;
            OP_data = app.OP_data;
            save(fullfile,'OP_data','OP_ListItems');
            
            % DM_data save
            DM_ListItems = app.SourceDataSetEditField.Value;
            DM_data = app.DM_data;
            save(fullfile,'DM_data','DM_ListItems');
            
            % CF_data save
            CF_data = app.DM_data;
            save(fullfile,'CF_data');           
        end

        % Button pushed function: SaveData_DM
        function SaveData_DMButtonPushed(app, event)
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);
            ListItems = app.FDListListBox.Items;
            ListItems2 = app.FDSelectionListBox_2.Items;
            DM_data = app.DM_data;
            save(fullfile,'DM_data');
        end

        % Button pushed function: SaveData_CF
        function SaveData_CFButtonPushed(app, event)
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);
            itemList = app.CF_data.T.sampleID;
            itemData = app.CF_data.T.itemIdx;
            CF_data = app.CF_data;
            save(fullfile,'CF_data',"itemData","itemList",'-mat');
        end

        % Button pushed function: DATAANALYSISButton
        function DATAANALYSISButtonPushed(app, event)
            
            yList = app.yaxisdataDropDown.Items;
            
            if ~isequal(app.yaxisdataDropDown.Value(1),'B')
                yList = {'B','b','A1','x1','g1','A2','x2','g2'};
                %{
                
                fig = app.TerahertzSpectrumAnalyzerUIFigure;
                uialert(fig,'Perform CURVE FIT ALL first','Warning');
                return;
                %}
            end
            
            
            T = app.CF_data.T;
            
            app.DialogApp = CF_Analyser(app,T,yList);
            
        end

        % Button pushed function: ANALYSERButton
        function ANALYSERButtonPushed(app, event)
            
            yList = app.DM_data.freq;
            Values = app.DM_data.values;
            tempList = app.DM_data.tempList;
                       
            app.DialogApp = DM_Analyser(app,yList,Values,tempList);
        end

        % Value changed function: AlgorithmDropDown
        function AlgorithmDropDownValueChanged(app, event)
            value = app.AlgorithmDropDown.Value;
            if isequal(value,'c')
                PLOTALLButtonPushed(app,event);
            end
        end

        % Button pushed function: RANGEPLOTButton
        function RANGEPLOTButtonPushed(app, event)
            ax = app.UIAxes9;
            
            cla(ax);
            dataList = str2num(app.SourceDataSetEditField.Value);
            ax.YLabel.String = app.YaxisDataEditField.Value;
            hold(ax,"on");
            
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;
            baseMin = app.DM_data.base{dataList(1)};
            baseMax = app.DM_data.base{dataList(1)};
            baseMean = zeros(size(dataList,2),1);
            
            for idx = dataList
                baseCrt = app.DM_data.base{idx};
                baseMean = baseMean + baseCrt./size(dataList,2);
                baseMin = min(baseMin,baseCrt);
                baseMax = max(baseMax,baseCrt);
            end
            
            size([baseMin baseMax])
             
            %plot(ax,app.(dataSrc).(xData){idx},baseMin,"LineWidth",1);
            %plot(ax,app.(dataSrc).(xData){idx},baseMax,"LineWidth",1);
            patch(ax,[app.(dataSrc).(xData){dataList(1)} app.(dataSrc).(xData){dataList(1)}(end:-1:1)],[baseMin baseMax(end:-1:1)],'r','FaceAlpha',0.1,'EdgeColor','none');
            plot(ax,app.(dataSrc).(xData){dataList(1)},baseMean,"LineWidth",1);
            
            A = app.ADropDown.Value;
            B = app.BDropDown.Value;
            C = app.CDropDown.Value;
            ylabel = strrep(app.YaxisDataEditField.Value,'A',A);
            ylabel = strrep(ylabel,'B',B);
            ylabel = strrep(ylabel,'C',C);
            
            ax.reset;
%             ax.ColorOrder = flipud(jet(length(dataList)));
            ax.YLabel.String = ylabel;
            ax.XLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
        end

        % Button pushed function: LOADDATA_CFButton
        function LOADDATA_CFButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.mat');
            
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            fullfile = strcat(filepath,filename);
            
            CFdataDel(app);
            
            load(fullfile);
            
            app.CF_data = CF_data;
            app.CF_data.T.sampleID = itemList;
            app.CF_data.T.itemIdx = itemData;
            
            updateTable(app);  
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create TerahertzSpectrumAnalyzerUIFigure and hide until all components are created
            app.TerahertzSpectrumAnalyzerUIFigure = uifigure('Visible', 'off');
            app.TerahertzSpectrumAnalyzerUIFigure.Position = [100 100 1396 937];
            app.TerahertzSpectrumAnalyzerUIFigure.Name = 'Terahertz Spectrum Analyzer';
            app.TerahertzSpectrumAnalyzerUIFigure.Tag = 'Version 1.1';

            % Create IMPORTPROJECTButton
            app.IMPORTPROJECTButton = uibutton(app.TerahertzSpectrumAnalyzerUIFigure, 'push');
            app.IMPORTPROJECTButton.ButtonPushedFcn = createCallbackFcn(app, @IMPORTPROJECTButtonPushed, true);
            app.IMPORTPROJECTButton.FontWeight = 'bold';
            app.IMPORTPROJECTButton.Position = [34 888 123 23];
            app.IMPORTPROJECTButton.Text = 'IMPORT PROJECT';

            % Create FILESEditFieldLabel
            app.FILESEditFieldLabel = uilabel(app.TerahertzSpectrumAnalyzerUIFigure);
            app.FILESEditFieldLabel.HorizontalAlignment = 'right';
            app.FILESEditFieldLabel.Position = [163 887 37 23];
            app.FILESEditFieldLabel.Text = 'FILES';

            % Create FILESEditField
            app.FILESEditField = uieditfield(app.TerahertzSpectrumAnalyzerUIFigure, 'text');
            app.FILESEditField.Position = [205 888 428 22];

            % Create EXTRACTDATAButton
            app.EXTRACTDATAButton = uibutton(app.TerahertzSpectrumAnalyzerUIFigure, 'push');
            app.EXTRACTDATAButton.ButtonPushedFcn = createCallbackFcn(app, @EXTRACTDATAButtonPushed, true);
            app.EXTRACTDATAButton.FontWeight = 'bold';
            app.EXTRACTDATAButton.Enable = 'off';
            app.EXTRACTDATAButton.Position = [639 887 105 23];
            app.EXTRACTDATAButton.Text = 'EXTRACT DATA';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.TerahertzSpectrumAnalyzerUIFigure);
            app.TabGroup.Position = [28 19 1336 846];

            % Create TimeDomainTab
            app.TimeDomainTab = uitab(app.TabGroup);
            app.TimeDomainTab.Title = 'Time Domain';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.TimeDomainTab);
            title(app.UIAxes2, 'PLOT 2')
            xlabel(app.UIAxes2, 'Time (ps)')
            ylabel(app.UIAxes2, 'E_{field intensity} (a.u.)')
            app.UIAxes2.PlotBoxAspectRatio = [1.82664233576642 1 1];
            app.UIAxes2.FontWeight = 'bold';
            app.UIAxes2.XLim = [-5 10];
            app.UIAxes2.XTickLabelRotation = 0;
            app.UIAxes2.YTickLabelRotation = 0;
            app.UIAxes2.ZTickLabelRotation = 0;
            app.UIAxes2.LineWidth = 1;
            app.UIAxes2.Box = 'on';
            app.UIAxes2.Position = [635 44 680 380];

            % Create UIAxes1
            app.UIAxes1 = uiaxes(app.TimeDomainTab);
            title(app.UIAxes1, 'PLOT 1')
            xlabel(app.UIAxes1, 'Time (ps)')
            ylabel(app.UIAxes1, 'E_{field intensity} (a.u.)')
            app.UIAxes1.PlotBoxAspectRatio = [1.82664233576642 1 1];
            app.UIAxes1.FontWeight = 'bold';
            app.UIAxes1.XLim = [-5 10];
            app.UIAxes1.XTickLabelRotation = 0;
            app.UIAxes1.YTickLabelRotation = 0;
            app.UIAxes1.ZTickLabelRotation = 0;
            app.UIAxes1.LineWidth = 1;
            app.UIAxes1.Box = 'on';
            app.UIAxes1.Position = [635 429 680 380];

            % Create MeasurementListBoxLabel
            app.MeasurementListBoxLabel = uilabel(app.TimeDomainTab);
            app.MeasurementListBoxLabel.HorizontalAlignment = 'right';
            app.MeasurementListBoxLabel.Position = [14 775 79 22];
            app.MeasurementListBoxLabel.Text = 'Measurement';

            % Create MeasurementListBox
            app.MeasurementListBox = uilistbox(app.TimeDomainTab);
            app.MeasurementListBox.Items = {};
            app.MeasurementListBox.ValueChangedFcn = createCallbackFcn(app, @MeasurementListBoxValueChanged, true);
            app.MeasurementListBox.Position = [14 519 191 257];
            app.MeasurementListBox.Value = {};

            % Create ADDButton
            app.ADDButton = uibutton(app.TimeDomainTab, 'push');
            app.ADDButton.ButtonPushedFcn = createCallbackFcn(app, @ADDButtonPushed, true);
            app.ADDButton.Position = [221 650 45 45];
            app.ADDButton.Text = 'ADD';

            % Create DELButton
            app.DELButton = uibutton(app.TimeDomainTab, 'push');
            app.DELButton.ButtonPushedFcn = createCallbackFcn(app, @DELButtonPushed, true);
            app.DELButton.Position = [221 586 45 45];
            app.DELButton.Text = 'DEL';

            % Create SelectionListBoxLabel
            app.SelectionListBoxLabel = uilabel(app.TimeDomainTab);
            app.SelectionListBoxLabel.Position = [285 775 55 22];
            app.SelectionListBoxLabel.Text = 'Selection';

            % Create SelectionListBox
            app.SelectionListBox = uilistbox(app.TimeDomainTab);
            app.SelectionListBox.Items = {};
            app.SelectionListBox.Position = [284 519 156 257];
            app.SelectionListBox.Value = {};

            % Create PLOT1TDButton
            app.PLOT1TDButton = uibutton(app.TimeDomainTab, 'push');
            app.PLOT1TDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1TDButtonPushed, true);
            app.PLOT1TDButton.Position = [458 642 100 45];
            app.PLOT1TDButton.Text = 'PLOT1';

            % Create FFTSettingsPanel
            app.FFTSettingsPanel = uipanel(app.TimeDomainTab);
            app.FFTSettingsPanel.Title = 'FFT Settings';
            app.FFTSettingsPanel.FontWeight = 'bold';
            app.FFTSettingsPanel.Position = [269 95 305 404];

            % Create MinFreqEditFieldLabel
            app.MinFreqEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MinFreqEditFieldLabel.HorizontalAlignment = 'right';
            app.MinFreqEditFieldLabel.Position = [19 315 59 23];
            app.MinFreqEditFieldLabel.Text = 'Min. Freq.';

            % Create MinFreqEditField
            app.MinFreqEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MinFreqEditField.Limits = [0 5];
            app.MinFreqEditField.ValueDisplayFormat = '%.1f';
            app.MinFreqEditField.Position = [80 316 45 22];
            app.MinFreqEditField.Value = 0.2;

            % Create MaxFreqEditFieldLabel
            app.MaxFreqEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MaxFreqEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxFreqEditFieldLabel.Position = [129 315 63 23];
            app.MaxFreqEditFieldLabel.Text = 'Max. Freq.';

            % Create MaxFreqEditField
            app.MaxFreqEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MaxFreqEditField.Limits = [0 10];
            app.MaxFreqEditField.ValueDisplayFormat = '%.1f';
            app.MaxFreqEditField.Position = [193 316 45 22];
            app.MaxFreqEditField.Value = 2.8;

            % Create THzLabel_4
            app.THzLabel_4 = uilabel(app.FFTSettingsPanel);
            app.THzLabel_4.Position = [242 315 27 22];
            app.THzLabel_4.Text = 'THz';

            % Create MaxTimeLabel
            app.MaxTimeLabel = uilabel(app.FFTSettingsPanel);
            app.MaxTimeLabel.HorizontalAlignment = 'right';
            app.MaxTimeLabel.Position = [131 125 62 23];
            app.MaxTimeLabel.Text = 'Max.Time';

            % Create MaxTimeEditField
            app.MaxTimeEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MaxTimeEditField.Limits = [0 100];
            app.MaxTimeEditField.ValueDisplayFormat = '%.2f';
            app.MaxTimeEditField.Tooltip = {'set the maximum value of the sample waveform(s)'};
            app.MaxTimeEditField.Position = [197 126 45 22];
            app.MaxTimeEditField.Value = 20;

            % Create at1stinternalreflectionsLabel
            app.at1stinternalreflectionsLabel = uilabel(app.FFTSettingsPanel);
            app.at1stinternalreflectionsLabel.Position = [128 154 136 22];
            app.at1stinternalreflectionsLabel.Text = 'at 1st internal reflections';

            % Create TRANSFORMButton
            app.TRANSFORMButton = uibutton(app.FFTSettingsPanel, 'push');
            app.TRANSFORMButton.ButtonPushedFcn = createCallbackFcn(app, @TRANSFORMButtonPushed, true);
            app.TRANSFORMButton.FontWeight = 'bold';
            app.TRANSFORMButton.Enable = 'off';
            app.TRANSFORMButton.Position = [22 13 255 30];
            app.TRANSFORMButton.Text = 'TRANSFORM';

            % Create ApodizationFunctionDropDownLabel
            app.ApodizationFunctionDropDownLabel = uilabel(app.FFTSettingsPanel);
            app.ApodizationFunctionDropDownLabel.Position = [20 94 119 23];
            app.ApodizationFunctionDropDownLabel.Text = 'Apodization Function';

            % Create ApodizationFunctionDropDown
            app.ApodizationFunctionDropDown = uidropdown(app.FFTSettingsPanel);
            app.ApodizationFunctionDropDown.Items = {'No Function', 'Hamming', 'Bartlett', 'Blackman', 'Boxcar', 'Hann', 'Taylor', 'Triang'};
            app.ApodizationFunctionDropDown.ItemsData = {'NoFunction', 'hamming', 'bartlett', 'blackman', 'rectwin', 'hann', 'taylorwin', 'triang'};
            app.ApodizationFunctionDropDown.Position = [141 95 119 22];
            app.ApodizationFunctionDropDown.Value = 'NoFunction';

            % Create ZeroFillingpowerofSpinnerLabel
            app.ZeroFillingpowerofSpinnerLabel = uilabel(app.FFTSettingsPanel);
            app.ZeroFillingpowerofSpinnerLabel.Position = [50 228 129 23];
            app.ZeroFillingpowerofSpinnerLabel.Text = 'Zero Filling, + power of';

            % Create ZeroFillingpowerofSpinner
            app.ZeroFillingpowerofSpinner = uispinner(app.FFTSettingsPanel);
            app.ZeroFillingpowerofSpinner.Limits = [1 4];
            app.ZeroFillingpowerofSpinner.Position = [188 229 65 22];
            app.ZeroFillingpowerofSpinner.Value = 2;

            % Create orLabel
            app.orLabel = uilabel(app.FFTSettingsPanel);
            app.orLabel.Position = [18 126 25 22];
            app.orLabel.Text = 'or, ';

            % Create AUTOWINDOWButton
            app.AUTOWINDOWButton = uibutton(app.FFTSettingsPanel, 'state');
            app.AUTOWINDOWButton.ValueChangedFcn = createCallbackFcn(app, @AUTOWINDOWButtonValueChanged, true);
            app.AUTOWINDOWButton.Tooltip = {'set the time_max 1st multiple reflection time'};
            app.AUTOWINDOWButton.Text = 'AUTO WINDOW';
            app.AUTOWINDOWButton.BackgroundColor = [1 1 1];
            app.AUTOWINDOWButton.Position = [20 153 103 23];

            % Create FrequencyrangeLabel
            app.FrequencyrangeLabel = uilabel(app.FFTSettingsPanel);
            app.FrequencyrangeLabel.FontWeight = 'bold';
            app.FrequencyrangeLabel.Position = [22 347 102 22];
            app.FrequencyrangeLabel.Text = 'Frequency range';

            % Create FFTUpsamplingLabel
            app.FFTUpsamplingLabel = uilabel(app.FFTSettingsPanel);
            app.FFTUpsamplingLabel.FontWeight = 'bold';
            app.FFTUpsamplingLabel.Position = [22 254 99 22];
            app.FFTUpsamplingLabel.Text = 'FFT Upsampling';

            % Create WindowFunctionLabel
            app.WindowFunctionLabel = uilabel(app.FFTSettingsPanel);
            app.WindowFunctionLabel.FontWeight = 'bold';
            app.WindowFunctionLabel.Position = [20 180 105 22];
            app.WindowFunctionLabel.Text = 'Window Function';

            % Create psLabel_4
            app.psLabel_4 = uilabel(app.FFTSettingsPanel);
            app.psLabel_4.Position = [248 125 25 22];
            app.psLabel_4.Text = 'ps';

            % Create MinTimeEditFieldLabel
            app.MinTimeEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MinTimeEditFieldLabel.HorizontalAlignment = 'right';
            app.MinTimeEditFieldLabel.Position = [37 126 54 22];
            app.MinTimeEditFieldLabel.Text = 'Min.Time';

            % Create MinTimeEditField
            app.MinTimeEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MinTimeEditField.Limits = [-30 50];
            app.MinTimeEditField.ValueDisplayFormat = '%.2f';
            app.MinTimeEditField.Tooltip = {'Set the minimum value of the sample waveform(s)'};
            app.MinTimeEditField.Position = [95 126 37 22];
            app.MinTimeEditField.Value = -10;

            % Create Label
            app.Label = uilabel(app.FFTSettingsPanel);
            app.Label.Position = [218 64 51 22];
            app.Label.Text = '0';

            % Create SpectralResolutionTHzLabel
            app.SpectralResolutionTHzLabel = uilabel(app.FFTSettingsPanel);
            app.SpectralResolutionTHzLabel.Position = [73 64 143 22];
            app.SpectralResolutionTHzLabel.Text = 'Spectral Resolution(THz):';

            % Create PLOT2TDButton
            app.PLOT2TDButton = uibutton(app.TimeDomainTab, 'push');
            app.PLOT2TDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT2TDButtonPushed, true);
            app.PLOT2TDButton.Position = [458 589 100 45];
            app.PLOT2TDButton.Text = 'PLOT2';

            % Create ALLButton
            app.ALLButton = uibutton(app.TimeDomainTab, 'push');
            app.ALLButton.ButtonPushedFcn = createCallbackFcn(app, @ALLButtonPushed, true);
            app.ALLButton.Position = [221 714 45 45];
            app.ALLButton.Text = 'ALL';

            % Create SampleDetailsPanel
            app.SampleDetailsPanel = uipanel(app.TimeDomainTab);
            app.SampleDetailsPanel.Title = 'Sample Details';
            app.SampleDetailsPanel.FontWeight = 'bold';
            app.SampleDetailsPanel.Position = [19 95 232 199];

            % Create mmLabel
            app.mmLabel = uilabel(app.SampleDetailsPanel);
            app.mmLabel.Position = [187 146 25 22];
            app.mmLabel.Text = 'mm';

            % Create psLabel_2
            app.psLabel_2 = uilabel(app.SampleDetailsPanel);
            app.psLabel_2.Position = [188 120 25 22];
            app.psLabel_2.Text = 'ps';

            % Create psLabel_3
            app.psLabel_3 = uilabel(app.SampleDetailsPanel);
            app.psLabel_3.Position = [188 62 25 22];
            app.psLabel_3.Text = 'ps';

            % Create ThicknessEditFieldLabel
            app.ThicknessEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.ThicknessEditFieldLabel.HorizontalAlignment = 'right';
            app.ThicknessEditFieldLabel.Position = [34 147 60 22];
            app.ThicknessEditFieldLabel.Text = 'Thickness';

            % Create ThicknessEditField
            app.ThicknessEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.ThicknessEditField.Limits = [0 Inf];
            app.ThicknessEditField.ValueDisplayFormat = '%.3f';
            app.ThicknessEditField.ValueChangedFcn = createCallbackFcn(app, @ThicknessEditFieldValueChanged, true);
            app.ThicknessEditField.Position = [109 147 73 22];

            % Create delta_tEditFieldLabel
            app.delta_tEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.delta_tEditFieldLabel.HorizontalAlignment = 'right';
            app.delta_tEditFieldLabel.Position = [49 118 42 22];
            app.delta_tEditFieldLabel.Text = 'delta_t';

            % Create delta_tEditField
            app.delta_tEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.delta_tEditField.Editable = 'off';
            app.delta_tEditField.Position = [109 118 73 22];

            % Create streflectionEditFieldLabel
            app.streflectionEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.streflectionEditFieldLabel.HorizontalAlignment = 'right';
            app.streflectionEditFieldLabel.Position = [22 62 77 22];
            app.streflectionEditFieldLabel.Text = '1st reflection';

            % Create streflectionEditField
            app.streflectionEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.streflectionEditField.ValueDisplayFormat = '%.3f';
            app.streflectionEditField.Editable = 'off';
            app.streflectionEditField.Position = [109 62 73 22];

            % Create RefractiveIndexEditFieldLabel
            app.RefractiveIndexEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.RefractiveIndexEditFieldLabel.HorizontalAlignment = 'right';
            app.RefractiveIndexEditFieldLabel.Position = [6 90 92 22];
            app.RefractiveIndexEditFieldLabel.Text = 'Refractive Index';

            % Create RefractiveIndexEditField
            app.RefractiveIndexEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.RefractiveIndexEditField.Editable = 'off';
            app.RefractiveIndexEditField.Position = [109 90 73 22];

            % Create FINDTHICKNESSButton
            app.FINDTHICKNESSButton = uibutton(app.SampleDetailsPanel, 'push');
            app.FINDTHICKNESSButton.ButtonPushedFcn = createCallbackFcn(app, @FINDTHICKNESSButtonPushed, true);
            app.FINDTHICKNESSButton.Position = [36 13 154 30];
            app.FINDTHICKNESSButton.Text = 'FIND THICKNESS';

            % Create MeasurementSettingsPanel
            app.MeasurementSettingsPanel = uipanel(app.TimeDomainTab);
            app.MeasurementSettingsPanel.Title = 'Measurement Settings';
            app.MeasurementSettingsPanel.FontWeight = 'bold';
            app.MeasurementSettingsPanel.Position = [17 409 232 90];

            % Create DescriptionEditFieldLabel
            app.DescriptionEditFieldLabel = uilabel(app.MeasurementSettingsPanel);
            app.DescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.DescriptionEditFieldLabel.Position = [4 37 66 22];
            app.DescriptionEditFieldLabel.Text = 'Description';

            % Create DescriptionEditField
            app.DescriptionEditField = uieditfield(app.MeasurementSettingsPanel, 'text');
            app.DescriptionEditField.ValueChangedFcn = createCallbackFcn(app, @DescriptionEditFieldValueChanged, true);
            app.DescriptionEditField.Position = [82 37 131 22];

            % Create ScanTimeEditFieldLabel
            app.ScanTimeEditFieldLabel = uilabel(app.MeasurementSettingsPanel);
            app.ScanTimeEditFieldLabel.Position = [9 10 62 22];
            app.ScanTimeEditFieldLabel.Text = 'Scan Time';

            % Create ScanTimeEditField
            app.ScanTimeEditField = uieditfield(app.MeasurementSettingsPanel, 'text');
            app.ScanTimeEditField.Editable = 'off';
            app.ScanTimeEditField.Position = [82 8 131 22];

            % Create ButtonGroupTD
            app.ButtonGroupTD = uibuttongroup(app.TimeDomainTab);
            app.ButtonGroupTD.Position = [458 695 100 78];

            % Create ReferenceButtonTD
            app.ReferenceButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.ReferenceButtonTD.Text = 'Reference';
            app.ReferenceButtonTD.Position = [11 51 77 22];

            % Create SampleButtonTD
            app.SampleButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.SampleButtonTD.Text = 'Sample';
            app.SampleButtonTD.Position = [11 29 63 22];

            % Create BothButtonTD
            app.BothButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.BothButtonTD.Text = 'Both';
            app.BothButtonTD.Position = [11 7 65 22];
            app.BothButtonTD.Value = true;

            % Create ASSIGNButtonTD
            app.ASSIGNButtonTD = uibutton(app.TimeDomainTab, 'push');
            app.ASSIGNButtonTD.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonTDPushed, true);
            app.ASSIGNButtonTD.FontWeight = 'bold';
            app.ASSIGNButtonTD.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonTD.Position = [22 21 217 30];
            app.ASSIGNButtonTD.Text = 'ASSIGN TD_DATA IN WORKSPACE';

            % Create SaveData_TD
            app.SaveData_TD = uibutton(app.TimeDomainTab, 'push');
            app.SaveData_TD.ButtonPushedFcn = createCallbackFcn(app, @SaveData_TDPushed, true);
            app.SaveData_TD.FontWeight = 'bold';
            app.SaveData_TD.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_TD.Position = [253 21 108 30];
            app.SaveData_TD.Text = 'SAVE TD_DATA';

            % Create LoadData_TD
            app.LoadData_TD = uibutton(app.TimeDomainTab, 'push');
            app.LoadData_TD.ButtonPushedFcn = createCallbackFcn(app, @LoadData_TDButtonPushed, true);
            app.LoadData_TD.FontWeight = 'bold';
            app.LoadData_TD.Tooltip = {'Assign data to variable in the base workspace'};
            app.LoadData_TD.Position = [371 21 108 30];
            app.LoadData_TD.Text = 'LOAD TD_DATA';

            % Create PLOTTHICKNESSESButton
            app.PLOTTHICKNESSESButton = uibutton(app.TimeDomainTab, 'push');
            app.PLOTTHICKNESSESButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTTHICKNESSESButtonPushed, true);
            app.PLOTTHICKNESSESButton.Position = [22 365 220 30];
            app.PLOTTHICKNESSESButton.Text = 'PLOT THICKNESSES';

            % Create PLOTREFRACTIVEINDICESButton
            app.PLOTREFRACTIVEINDICESButton = uibutton(app.TimeDomainTab, 'push');
            app.PLOTREFRACTIVEINDICESButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTREFRACTIVEINDICESButtonPushed, true);
            app.PLOTREFRACTIVEINDICESButton.Position = [22 325 220 30];
            app.PLOTREFRACTIVEINDICESButton.Text = 'PLOT REFRACTIVE INDICES';

            % Create LEGENDButton_2
            app.LEGENDButton_2 = uibutton(app.TimeDomainTab, 'state');
            app.LEGENDButton_2.ValueChangedFcn = createCallbackFcn(app, @LEGENDButton_2ValueChanged, true);
            app.LEGENDButton_2.Text = 'LEGEND';
            app.LEGENDButton_2.Position = [1054 11 99 22];

            % Create JETCOLORMAPButton
            app.JETCOLORMAPButton = uibutton(app.TimeDomainTab, 'state');
            app.JETCOLORMAPButton.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButtonValueChanged, true);
            app.JETCOLORMAPButton.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton.Position = [1170 11 107 22];

            % Create FrequencyDomainTab
            app.FrequencyDomainTab = uitab(app.TabGroup);
            app.FrequencyDomainTab.Title = 'Frequency Domain';

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.FrequencyDomainTab);
            title(app.UIAxes3, 'PLOT 1')
            xlabel(app.UIAxes3, 'Frequency (THz)')
            ylabel(app.UIAxes3, 'E_{field intensity} (a.u.)')
            app.UIAxes3.PlotBoxAspectRatio = [1.7992700729927 1 1];
            app.UIAxes3.FontWeight = 'bold';
            app.UIAxes3.XTickLabelRotation = 0;
            app.UIAxes3.YTickLabelRotation = 0;
            app.UIAxes3.YScale = 'log';
            app.UIAxes3.YMinorTick = 'on';
            app.UIAxes3.ZTickLabelRotation = 0;
            app.UIAxes3.LineWidth = 1;
            app.UIAxes3.Box = 'on';
            app.UIAxes3.Position = [635 429 680 380];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.FrequencyDomainTab);
            title(app.UIAxes4, 'PLOT 2')
            xlabel(app.UIAxes4, 'Frequency (THz)')
            ylabel(app.UIAxes4, 'E_{field intensity} (a.u.)')
            app.UIAxes4.PlotBoxAspectRatio = [1.7992700729927 1 1];
            app.UIAxes4.FontWeight = 'bold';
            app.UIAxes4.XTickLabelRotation = 0;
            app.UIAxes4.YTickLabelRotation = 0;
            app.UIAxes4.YScale = 'log';
            app.UIAxes4.YMinorTick = 'on';
            app.UIAxes4.ZTickLabelRotation = 0;
            app.UIAxes4.LineWidth = 1;
            app.UIAxes4.Box = 'on';
            app.UIAxes4.Position = [635 44 680 380];

            % Create PLOT1FDButton
            app.PLOT1FDButton = uibutton(app.FrequencyDomainTab, 'push');
            app.PLOT1FDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1FDButtonPushed, true);
            app.PLOT1FDButton.Position = [515 518 100 45];
            app.PLOT1FDButton.Text = 'PLOT1';

            % Create PLOT2FDButton
            app.PLOT2FDButton = uibutton(app.FrequencyDomainTab, 'push');
            app.PLOT2FDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT2FDButtonPushed, true);
            app.PLOT2FDButton.Position = [515 464 100 45];
            app.PLOT2FDButton.Text = 'PLOT2';

            % Create FDListListBoxLabel
            app.FDListListBoxLabel = uilabel(app.FrequencyDomainTab);
            app.FDListListBoxLabel.Position = [17 780 79 22];
            app.FDListListBoxLabel.Text = 'FD List';

            % Create FDListListBox
            app.FDListListBox = uilistbox(app.FrequencyDomainTab);
            app.FDListListBox.Items = {};
            app.FDListListBox.Position = [14 463 301 313];
            app.FDListListBox.Value = {};

            % Create ALLFDButton
            app.ALLFDButton = uibutton(app.FrequencyDomainTab, 'push');
            app.ALLFDButton.ButtonPushedFcn = createCallbackFcn(app, @ALLFDButtonPushed, true);
            app.ALLFDButton.Position = [327 693 45 45];
            app.ALLFDButton.Text = 'ALL';

            % Create ADDFDButton
            app.ADDFDButton = uibutton(app.FrequencyDomainTab, 'push');
            app.ADDFDButton.ButtonPushedFcn = createCallbackFcn(app, @ADDFDButtonPushed, true);
            app.ADDFDButton.Position = [327 633 45 45];
            app.ADDFDButton.Text = 'ADD';

            % Create DELFDButton
            app.DELFDButton = uibutton(app.FrequencyDomainTab, 'push');
            app.DELFDButton.ButtonPushedFcn = createCallbackFcn(app, @DELFDButtonPushed, true);
            app.DELFDButton.Position = [327 573 45 45];
            app.DELFDButton.Text = 'DEL';

            % Create FDSelectionListBoxLabel
            app.FDSelectionListBoxLabel = uilabel(app.FrequencyDomainTab);
            app.FDSelectionListBoxLabel.Position = [386 775 79 22];
            app.FDSelectionListBoxLabel.Text = 'FD Selection';

            % Create FDSelectionListBox
            app.FDSelectionListBox = uilistbox(app.FrequencyDomainTab);
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox.Position = [386 463 116 313];
            app.FDSelectionListBox.Value = {};

            % Create ButtonGroupFD
            app.ButtonGroupFD = uibuttongroup(app.FrequencyDomainTab);
            app.ButtonGroupFD.Position = [515 695 100 78];

            % Create ReferenceButtonFD
            app.ReferenceButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.ReferenceButtonFD.Text = 'Reference';
            app.ReferenceButtonFD.Position = [11 51 77 22];

            % Create SampleButtonFD
            app.SampleButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.SampleButtonFD.Text = 'Sample';
            app.SampleButtonFD.Position = [11 29 63 22];
            app.SampleButtonFD.Value = true;

            % Create BothButtonFD
            app.BothButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.BothButtonFD.Text = 'Both';
            app.BothButtonFD.Position = [11 7 65 22];

            % Create REMOVEButton
            app.REMOVEButton = uibutton(app.FrequencyDomainTab, 'push');
            app.REMOVEButton.ButtonPushedFcn = createCallbackFcn(app, @REMOVEButtonPushed, true);
            app.REMOVEButton.Position = [39 425 116 30];
            app.REMOVEButton.Text = 'REMOVE';

            % Create REMOVEALLButton
            app.REMOVEALLButton = uibutton(app.FrequencyDomainTab, 'push');
            app.REMOVEALLButton.ButtonPushedFcn = createCallbackFcn(app, @REMOVEALLButtonPushed, true);
            app.REMOVEALLButton.Position = [166 425 116 30];
            app.REMOVEALLButton.Text = 'REMOVE ALL';

            % Create ASSIGNButtonFD
            app.ASSIGNButtonFD = uibutton(app.FrequencyDomainTab, 'push');
            app.ASSIGNButtonFD.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonFDPushed, true);
            app.ASSIGNButtonFD.FontWeight = 'bold';
            app.ASSIGNButtonFD.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonFD.Position = [17 16 224 30];
            app.ASSIGNButtonFD.Text = 'ASSIGN FD_DATA IN WORKSPACE';

            % Create FDDataAnalysisPanel
            app.FDDataAnalysisPanel = uipanel(app.FrequencyDomainTab);
            app.FDDataAnalysisPanel.Title = 'FD Data Analysis';
            app.FDDataAnalysisPanel.FontWeight = 'bold';
            app.FDDataAnalysisPanel.Position = [17 95 619 319];

            % Create PLOT1FDButton_2
            app.PLOT1FDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOT1FDButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT1FDButton_2Pushed, true);
            app.PLOT1FDButton_2.Position = [504 116 100 45];
            app.PLOT1FDButton_2.Text = 'PLOT1';

            % Create PLOT2FDButton_2
            app.PLOT2FDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOT2FDButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT2FDButton_2Pushed, true);
            app.PLOT2FDButton_2.Position = [504 65 100 45];
            app.PLOT2FDButton_2.Text = 'PLOT2';

            % Create MagPhaseButtonGroup_2
            app.MagPhaseButtonGroup_2 = uibuttongroup(app.FDDataAnalysisPanel);
            app.MagPhaseButtonGroup_2.Position = [504 168 100 50];

            % Create AmplitudeButton_2
            app.AmplitudeButton_2 = uiradiobutton(app.MagPhaseButtonGroup_2);
            app.AmplitudeButton_2.Text = 'Amplitude';
            app.AmplitudeButton_2.Position = [11 24 75 22];
            app.AmplitudeButton_2.Value = true;

            % Create PhaseButton_2
            app.PhaseButton_2 = uiradiobutton(app.MagPhaseButtonGroup_2);
            app.PhaseButton_2.Text = 'Phase';
            app.PhaseButton_2.Position = [11 2 56 22];

            % Create ALLFDButton_2
            app.ALLFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.ALLFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @ALLFDButton_2Pushed, true);
            app.ALLFDButton_2.Position = [8 204 45 45];
            app.ALLFDButton_2.Text = 'ALL';

            % Create ADDFDButton_2
            app.ADDFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.ADDFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @ADDFDButton_2Pushed, true);
            app.ADDFDButton_2.Position = [8 146 45 45];
            app.ADDFDButton_2.Text = 'ADD';

            % Create DELFDButton_2
            app.DELFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.DELFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @DELFDButton_2Pushed, true);
            app.DELFDButton_2.Position = [8 89 45 45];
            app.DELFDButton_2.Text = 'DEL';

            % Create DescriptionEditField_2Label
            app.DescriptionEditField_2Label = uilabel(app.FDDataAnalysisPanel);
            app.DescriptionEditField_2Label.Position = [187 262 66 22];
            app.DescriptionEditField_2Label.Text = 'Description';

            % Create DescriptionEditField_FD
            app.DescriptionEditField_FD = uieditfield(app.FDDataAnalysisPanel, 'text');
            app.DescriptionEditField_FD.Position = [184 240 178 22];

            % Create ThicknessmmPanel
            app.ThicknessmmPanel = uipanel(app.FDDataAnalysisPanel);
            app.ThicknessmmPanel.Title = 'Thickness(mm)';
            app.ThicknessmmPanel.Position = [184 176 181 56];

            % Create RefEditFieldLabel
            app.RefEditFieldLabel = uilabel(app.ThicknessmmPanel);
            app.RefEditFieldLabel.HorizontalAlignment = 'right';
            app.RefEditFieldLabel.Position = [4 7 28 22];
            app.RefEditFieldLabel.Text = 'Ref.';

            % Create RefEditField
            app.RefEditField = uieditfield(app.ThicknessmmPanel, 'numeric');
            app.RefEditField.Position = [36 7 42 22];

            % Create SampleEditFieldLabel
            app.SampleEditFieldLabel = uilabel(app.ThicknessmmPanel);
            app.SampleEditFieldLabel.HorizontalAlignment = 'right';
            app.SampleEditFieldLabel.Position = [81 7 46 22];
            app.SampleEditFieldLabel.Text = 'Sample';

            % Create SampleEditField
            app.SampleEditField = uieditfield(app.ThicknessmmPanel, 'numeric');
            app.SampleEditField.Position = [131 7 42 22];

            % Create NumberofMultipleReflectionsPanel
            app.NumberofMultipleReflectionsPanel = uipanel(app.FDDataAnalysisPanel);
            app.NumberofMultipleReflectionsPanel.Title = 'Number of Multiple Reflections';
            app.NumberofMultipleReflectionsPanel.Position = [185 109 180 56];

            % Create RefEditField_2Label
            app.RefEditField_2Label = uilabel(app.NumberofMultipleReflectionsPanel);
            app.RefEditField_2Label.HorizontalAlignment = 'right';
            app.RefEditField_2Label.Position = [4 7 28 22];
            app.RefEditField_2Label.Text = 'Ref.';

            % Create RefNMREditField
            app.RefNMREditField = uieditfield(app.NumberofMultipleReflectionsPanel, 'numeric');
            app.RefNMREditField.Position = [36 7 42 22];

            % Create SampleEditField_2Label
            app.SampleEditField_2Label = uilabel(app.NumberofMultipleReflectionsPanel);
            app.SampleEditField_2Label.HorizontalAlignment = 'right';
            app.SampleEditField_2Label.Position = [81 7 46 22];
            app.SampleEditField_2Label.Text = 'Sample';

            % Create SampleNMREditField
            app.SampleNMREditField = uieditfield(app.NumberofMultipleReflectionsPanel, 'numeric');
            app.SampleNMREditField.Position = [131 7 42 22];

            % Create CALCULATEButton
            app.CALCULATEButton = uibutton(app.FDDataAnalysisPanel, 'push');
            app.CALCULATEButton.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEButtonPushed, true);
            app.CALCULATEButton.FontWeight = 'bold';
            app.CALCULATEButton.Position = [185 60 180 38];
            app.CALCULATEButton.Text = 'CALCULATE';

            % Create FDSelectionListBox_2Label
            app.FDSelectionListBox_2Label = uilabel(app.FDDataAnalysisPanel);
            app.FDSelectionListBox_2Label.Position = [56 265 79 22];
            app.FDSelectionListBox_2Label.Text = 'FD Selection';

            % Create FDSelectionListBox_2
            app.FDSelectionListBox_2 = uilistbox(app.FDDataAnalysisPanel);
            app.FDSelectionListBox_2.Items = {};
            app.FDSelectionListBox_2.ValueChangedFcn = createCallbackFcn(app, @FDSelectionListBox_2ValueChanged, true);
            app.FDSelectionListBox_2.Position = [56 13 120 253];
            app.FDSelectionListBox_2.Value = {};

            % Create PlotDataButtonGroup
            app.PlotDataButtonGroup = uibuttongroup(app.FDDataAnalysisPanel);
            app.PlotDataButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @PlotDataButtonGroupSelectionChanged, true);
            app.PlotDataButtonGroup.Title = 'Plot Data';
            app.PlotDataButtonGroup.Position = [372 14 123 261];

            % Create TRANSMITTANCEButton
            app.TRANSMITTANCEButton = uitogglebutton(app.PlotDataButtonGroup);
            app.TRANSMITTANCEButton.Text = 'TRANSMITTANCE';
            app.TRANSMITTANCEButton.Position = [7 192 110 40];
            app.TRANSMITTANCEButton.Value = true;

            % Create ABSORPTIONButton
            app.ABSORPTIONButton = uitogglebutton(app.PlotDataButtonGroup);
            app.ABSORPTIONButton.Enable = 'off';
            app.ABSORPTIONButton.Text = 'ABSORPTION';
            app.ABSORPTIONButton.Position = [7 131 110 40];

            % Create REFRACTIVEINDEXButton
            app.REFRACTIVEINDEXButton = uitogglebutton(app.PlotDataButtonGroup);
            app.REFRACTIVEINDEXButton.Enable = 'off';
            app.REFRACTIVEINDEXButton.Text = {'REFRACTIVE'; 'INDEX'};
            app.REFRACTIVEINDEXButton.Position = [7 71 110 40];

            % Create DIELECTRICCONSTANTButton
            app.DIELECTRICCONSTANTButton = uitogglebutton(app.PlotDataButtonGroup);
            app.DIELECTRICCONSTANTButton.Enable = 'off';
            app.DIELECTRICCONSTANTButton.Text = {'DIELECTRIC'; 'CONSTANT'};
            app.DIELECTRICCONSTANTButton.Position = [7 11 110 40];

            % Create YscaleButtonGroup_2
            app.YscaleButtonGroup_2 = uibuttongroup(app.FDDataAnalysisPanel);
            app.YscaleButtonGroup_2.Position = [504 225 100 50];

            % Create logButton_2
            app.logButton_2 = uiradiobutton(app.YscaleButtonGroup_2);
            app.logButton_2.Text = 'log';
            app.logButton_2.Position = [11 24 38 22];
            app.logButton_2.Value = true;

            % Create linearButton_2
            app.linearButton_2 = uiradiobutton(app.YscaleButtonGroup_2);
            app.linearButton_2.Text = 'linear';
            app.linearButton_2.Position = [11 2 51 22];

            % Create BANDWIDTHFILTERButton
            app.BANDWIDTHFILTERButton = uibutton(app.FDDataAnalysisPanel, 'push');
            app.BANDWIDTHFILTERButton.ButtonPushedFcn = createCallbackFcn(app, @BANDWIDTHFILTERButtonPushed, true);
            app.BANDWIDTHFILTERButton.FontWeight = 'bold';
            app.BANDWIDTHFILTERButton.Enable = 'off';
            app.BANDWIDTHFILTERButton.Position = [185 14 180 38];
            app.BANDWIDTHFILTERButton.Text = 'BANDWIDTH FILTER';

            % Create PLOTNEWFDButton
            app.PLOTNEWFDButton = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOTNEWFDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTNEWFDButtonPushed, true);
            app.PLOTNEWFDButton.Position = [504 14 100 45];
            app.PLOTNEWFDButton.Text = 'PLOT NEW';

            % Create RealImagButtonGroup
            app.RealImagButtonGroup = uibuttongroup(app.FDDataAnalysisPanel);
            app.RealImagButtonGroup.Visible = 'off';
            app.RealImagButtonGroup.Position = [504 168 100 50];

            % Create RealButton
            app.RealButton = uiradiobutton(app.RealImagButtonGroup);
            app.RealButton.Text = 'Real';
            app.RealButton.Position = [11 24 58 22];
            app.RealButton.Value = true;

            % Create ImaginaryButton
            app.ImaginaryButton = uiradiobutton(app.RealImagButtonGroup);
            app.ImaginaryButton.Text = 'Imaginary';
            app.ImaginaryButton.Position = [11 2 75 22];

            % Create YscaleButtonGroup
            app.YscaleButtonGroup = uibuttongroup(app.FrequencyDomainTab);
            app.YscaleButtonGroup.Position = [515 636 100 51];

            % Create logButton
            app.logButton = uiradiobutton(app.YscaleButtonGroup);
            app.logButton.Text = 'log';
            app.logButton.Position = [11 24 38 22];
            app.logButton.Value = true;

            % Create linearButton
            app.linearButton = uiradiobutton(app.YscaleButtonGroup);
            app.linearButton.Text = 'linear';
            app.linearButton.Position = [11 2 51 22];

            % Create MagPhaseButtonGroup
            app.MagPhaseButtonGroup = uibuttongroup(app.FrequencyDomainTab);
            app.MagPhaseButtonGroup.Position = [515 577 100 51];

            % Create AmplitudeButton
            app.AmplitudeButton = uiradiobutton(app.MagPhaseButtonGroup);
            app.AmplitudeButton.Text = 'Amplitude';
            app.AmplitudeButton.Position = [11 24 75 22];
            app.AmplitudeButton.Value = true;

            % Create PhaseButton
            app.PhaseButton = uiradiobutton(app.MagPhaseButtonGroup);
            app.PhaseButton.Text = 'Phase';
            app.PhaseButton.Position = [11 2 56 22];

            % Create SaveData_FD
            app.SaveData_FD = uibutton(app.FrequencyDomainTab, 'push');
            app.SaveData_FD.ButtonPushedFcn = createCallbackFcn(app, @SaveData_FDButtonPushed, true);
            app.SaveData_FD.FontWeight = 'bold';
            app.SaveData_FD.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_FD.Position = [247 16 113 30];
            app.SaveData_FD.Text = 'SAVE FD_DATA';

            % Create LoadData_FD
            app.LoadData_FD = uibutton(app.FrequencyDomainTab, 'push');
            app.LoadData_FD.ButtonPushedFcn = createCallbackFcn(app, @LoadData_FDButtonPushed, true);
            app.LoadData_FD.FontWeight = 'bold';
            app.LoadData_FD.Tooltip = {'Assign data to variable in the base workspace'};
            app.LoadData_FD.Position = [367 16 108 30];
            app.LoadData_FD.Text = 'LOAD FD_DATA';

            % Create optimisationButton
            app.optimisationButton = uibutton(app.FrequencyDomainTab, 'push');
            app.optimisationButton.ButtonPushedFcn = createCallbackFcn(app, @optimisationButtonButtonPushed, true);
            app.optimisationButton.FontWeight = 'bold';
            app.optimisationButton.Enable = 'off';
            app.optimisationButton.Tooltip = {'Assign data to variable in the base workspace'};
            app.optimisationButton.Position = [97 56 170 30];
            app.optimisationButton.Text = 'OPTIMISATION';

            % Create LEGENDButton
            app.LEGENDButton = uibutton(app.FrequencyDomainTab, 'state');
            app.LEGENDButton.ValueChangedFcn = createCallbackFcn(app, @LEGENDButtonValueChanged, true);
            app.LEGENDButton.Text = 'LEGEND';
            app.LEGENDButton.Position = [1054 11 99 22];

            % Create JETCOLORMAPButton_2
            app.JETCOLORMAPButton_2 = uibutton(app.FrequencyDomainTab, 'state');
            app.JETCOLORMAPButton_2.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButton_2ValueChanged, true);
            app.JETCOLORMAPButton_2.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton_2.Position = [1170 11 107 22];

            % Create FDDatatoLabel
            app.FDDatatoLabel = uilabel(app.FrequencyDomainTab);
            app.FDDatatoLabel.FontWeight = 'bold';
            app.FDDatatoLabel.Position = [27 60 69 22];
            app.FDDatatoLabel.Text = 'FD Data to ';

            % Create dataManipulationButton
            app.dataManipulationButton = uibutton(app.FrequencyDomainTab, 'push');
            app.dataManipulationButton.ButtonPushedFcn = createCallbackFcn(app, @dataManipulationButtonPushed, true);
            app.dataManipulationButton.FontWeight = 'bold';
            app.dataManipulationButton.Enable = 'off';
            app.dataManipulationButton.Tooltip = {'Assign data to variable in the base workspace'};
            app.dataManipulationButton.Position = [277 56 170 30];
            app.dataManipulationButton.Text = 'DATA MANIPULATION';

            % Create curveFittingButton
            app.curveFittingButton = uibutton(app.FrequencyDomainTab, 'push');
            app.curveFittingButton.ButtonPushedFcn = createCallbackFcn(app, @curveFittingButtonPushed, true);
            app.curveFittingButton.FontWeight = 'bold';
            app.curveFittingButton.Enable = 'off';
            app.curveFittingButton.Position = [457 58 170 28];
            app.curveFittingButton.Text = 'CURVE FITTING';

            % Create OptimisationTab
            app.OptimisationTab = uitab(app.TabGroup);
            app.OptimisationTab.Title = 'Optimisation';

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.OptimisationTab);
            title(app.UIAxes5, 'Fitness')
            xlabel(app.UIAxes5, 'Frequency (THz)')
            app.UIAxes5.PlotBoxAspectRatio = [3.25257731958763 1 1];
            app.UIAxes5.FontWeight = 'bold';
            app.UIAxes5.XTickLabelRotation = 0;
            app.UIAxes5.YTickLabelRotation = 0;
            app.UIAxes5.ZTickLabelRotation = 0;
            app.UIAxes5.LineWidth = 1;
            app.UIAxes5.Box = 'on';
            app.UIAxes5.Position = [626 554 680 250];

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.OptimisationTab);
            title(app.UIAxes6, 'Refractive Index')
            xlabel(app.UIAxes6, 'Frequency (THz)')
            app.UIAxes6.PlotBoxAspectRatio = [3.25257731958763 1 1];
            app.UIAxes6.FontWeight = 'bold';
            app.UIAxes6.XTickLabelRotation = 0;
            app.UIAxes6.YTickLabelRotation = 0;
            app.UIAxes6.ZTickLabelRotation = 0;
            app.UIAxes6.LineWidth = 1;
            app.UIAxes6.Box = 'on';
            app.UIAxes6.Position = [626 285 680 250];

            % Create UIAxes7
            app.UIAxes7 = uiaxes(app.OptimisationTab);
            title(app.UIAxes7, 'Extinction coefficient')
            xlabel(app.UIAxes7, 'Frequency (THz)')
            app.UIAxes7.PlotBoxAspectRatio = [3.25257731958763 1 1];
            app.UIAxes7.FontWeight = 'bold';
            app.UIAxes7.XTickLabelRotation = 0;
            app.UIAxes7.YTickLabelRotation = 0;
            app.UIAxes7.ZTickLabelRotation = 0;
            app.UIAxes7.LineWidth = 1;
            app.UIAxes7.Box = 'on';
            app.UIAxes7.Position = [626 19 680 250];

            % Create UIAxes8
            app.UIAxes8 = uiaxes(app.OptimisationTab);
            title(app.UIAxes8, 'Refractive Index Offset')
            xlabel(app.UIAxes8, 'Frequency (THz)')
            app.UIAxes8.PlotBoxAspectRatio = [3.90780141843972 1 1];
            app.UIAxes8.FontWeight = 'bold';
            app.UIAxes8.XTickLabelRotation = 0;
            app.UIAxes8.YTickLabelRotation = 0;
            app.UIAxes8.ZTickLabelRotation = 0;
            app.UIAxes8.LineWidth = 1;
            app.UIAxes8.Box = 'on';
            app.UIAxes8.Visible = 'off';
            app.UIAxes8.Position = [7 58 581 168];

            % Create FittingParameterstoOpticalParameterExtractionTheoryLabel
            app.FittingParameterstoOpticalParameterExtractionTheoryLabel = uilabel(app.OptimisationTab);
            app.FittingParameterstoOpticalParameterExtractionTheoryLabel.FontSize = 14;
            app.FittingParameterstoOpticalParameterExtractionTheoryLabel.Position = [25 790 469 22];
            app.FittingParameterstoOpticalParameterExtractionTheoryLabel.Text = 'Fitting Optical Parameters Using Nelder-Mead Simplex Search Algorithm';

            % Create InputDataPanel
            app.InputDataPanel = uipanel(app.OptimisationTab);
            app.InputDataPanel.Title = 'Input Data';
            app.InputDataPanel.Position = [19 498 572 266];

            % Create SampleCase1Label
            app.SampleCase1Label = uilabel(app.InputDataPanel);
            app.SampleCase1Label.HorizontalAlignment = 'right';
            app.SampleCase1Label.Position = [10 207 87 22];
            app.SampleCase1Label.Text = 'Sample Case 1';

            % Create SampleCase1DropDown
            app.SampleCase1DropDown = uidropdown(app.InputDataPanel);
            app.SampleCase1DropDown.Items = {'No available data'};
            app.SampleCase1DropDown.ValueChangedFcn = createCallbackFcn(app, @SampleCase1DropDownValueChanged, true);
            app.SampleCase1DropDown.Position = [112 207 181 22];
            app.SampleCase1DropDown.Value = 'No available data';

            % Create ThicknessmmPanel_2
            app.ThicknessmmPanel_2 = uipanel(app.InputDataPanel);
            app.ThicknessmmPanel_2.Title = 'Thickness(mm)';
            app.ThicknessmmPanel_2.Position = [194 142 181 56];

            % Create RefEditField_2Label_2
            app.RefEditField_2Label_2 = uilabel(app.ThicknessmmPanel_2);
            app.RefEditField_2Label_2.HorizontalAlignment = 'right';
            app.RefEditField_2Label_2.Position = [4 7 28 22];
            app.RefEditField_2Label_2.Text = 'Ref.';

            % Create case1RefTEditField
            app.case1RefTEditField = uieditfield(app.ThicknessmmPanel_2, 'numeric');
            app.case1RefTEditField.ValueDisplayFormat = '%.3f';
            app.case1RefTEditField.Position = [36 7 42 22];

            % Create SampleEditField_2Label_2
            app.SampleEditField_2Label_2 = uilabel(app.ThicknessmmPanel_2);
            app.SampleEditField_2Label_2.HorizontalAlignment = 'right';
            app.SampleEditField_2Label_2.Position = [81 7 46 22];
            app.SampleEditField_2Label_2.Text = 'Sample';

            % Create case1SampleTEditField
            app.case1SampleTEditField = uieditfield(app.ThicknessmmPanel_2, 'numeric');
            app.case1SampleTEditField.ValueDisplayFormat = '%.3f';
            app.case1SampleTEditField.Position = [131 7 42 22];

            % Create DescriptionEditField_2Label_2
            app.DescriptionEditField_2Label_2 = uilabel(app.InputDataPanel);
            app.DescriptionEditField_2Label_2.Position = [10 171 66 22];
            app.DescriptionEditField_2Label_2.Text = 'Description';

            % Create case1DescriptionEditField
            app.case1DescriptionEditField = uieditfield(app.InputDataPanel, 'text');
            app.case1DescriptionEditField.Position = [7 149 178 22];

            % Create NumberofMulitipleReflectionsPanel_2
            app.NumberofMulitipleReflectionsPanel_2 = uipanel(app.InputDataPanel);
            app.NumberofMulitipleReflectionsPanel_2.Title = 'Number of Mulitiple Reflections';
            app.NumberofMulitipleReflectionsPanel_2.Position = [382 142 180 56];

            % Create RefEditField_2Label_3
            app.RefEditField_2Label_3 = uilabel(app.NumberofMulitipleReflectionsPanel_2);
            app.RefEditField_2Label_3.HorizontalAlignment = 'right';
            app.RefEditField_2Label_3.Position = [4 7 28 22];
            app.RefEditField_2Label_3.Text = 'Ref.';

            % Create case1RefetlNumEditField
            app.case1RefetlNumEditField = uieditfield(app.NumberofMulitipleReflectionsPanel_2, 'numeric');
            app.case1RefetlNumEditField.ValueDisplayFormat = '%.0f';
            app.case1RefetlNumEditField.Position = [36 7 42 22];

            % Create SampleEditField_2Label_3
            app.SampleEditField_2Label_3 = uilabel(app.NumberofMulitipleReflectionsPanel_2);
            app.SampleEditField_2Label_3.HorizontalAlignment = 'right';
            app.SampleEditField_2Label_3.Position = [81 7 46 22];
            app.SampleEditField_2Label_3.Text = 'Sample';

            % Create case1SampleetlNumEditField
            app.case1SampleetlNumEditField = uieditfield(app.NumberofMulitipleReflectionsPanel_2, 'numeric');
            app.case1SampleetlNumEditField.ValueDisplayFormat = '%.0f';
            app.case1SampleetlNumEditField.Position = [131 7 42 22];

            % Create SampleCase2DropDownLabel
            app.SampleCase2DropDownLabel = uilabel(app.InputDataPanel);
            app.SampleCase2DropDownLabel.HorizontalAlignment = 'right';
            app.SampleCase2DropDownLabel.Position = [10 91 87 22];
            app.SampleCase2DropDownLabel.Text = 'Sample Case 2';

            % Create SampleCase2DropDown
            app.SampleCase2DropDown = uidropdown(app.InputDataPanel);
            app.SampleCase2DropDown.Items = {'No available data'};
            app.SampleCase2DropDown.ValueChangedFcn = createCallbackFcn(app, @SampleCase2DropDownValueChanged, true);
            app.SampleCase2DropDown.Position = [112 91 181 22];
            app.SampleCase2DropDown.Value = 'No available data';

            % Create DescriptionEditField_2Label_3
            app.DescriptionEditField_2Label_3 = uilabel(app.InputDataPanel);
            app.DescriptionEditField_2Label_3.Position = [10 55 66 22];
            app.DescriptionEditField_2Label_3.Text = 'Description';

            % Create case2DescriptionEditField
            app.case2DescriptionEditField = uieditfield(app.InputDataPanel, 'text');
            app.case2DescriptionEditField.Position = [7 33 178 22];

            % Create ThicknessmmPanel_3
            app.ThicknessmmPanel_3 = uipanel(app.InputDataPanel);
            app.ThicknessmmPanel_3.Title = 'Thickness(mm)';
            app.ThicknessmmPanel_3.Position = [194 26 181 56];

            % Create RefEditField_4Label
            app.RefEditField_4Label = uilabel(app.ThicknessmmPanel_3);
            app.RefEditField_4Label.HorizontalAlignment = 'right';
            app.RefEditField_4Label.Position = [4 7 28 22];
            app.RefEditField_4Label.Text = 'Ref.';

            % Create case2RefTEditField
            app.case2RefTEditField = uieditfield(app.ThicknessmmPanel_3, 'numeric');
            app.case2RefTEditField.ValueDisplayFormat = '%.3f';
            app.case2RefTEditField.Position = [36 7 42 22];

            % Create SampleEditField_4Label
            app.SampleEditField_4Label = uilabel(app.ThicknessmmPanel_3);
            app.SampleEditField_4Label.HorizontalAlignment = 'right';
            app.SampleEditField_4Label.Position = [81 7 46 22];
            app.SampleEditField_4Label.Text = 'Sample';

            % Create case2SampleTEditField
            app.case2SampleTEditField = uieditfield(app.ThicknessmmPanel_3, 'numeric');
            app.case2SampleTEditField.ValueDisplayFormat = '%.3f';
            app.case2SampleTEditField.Position = [131 7 42 22];

            % Create NumberofMulitipleReflectionsPanel_3
            app.NumberofMulitipleReflectionsPanel_3 = uipanel(app.InputDataPanel);
            app.NumberofMulitipleReflectionsPanel_3.Title = 'Number of Mulitiple Reflections';
            app.NumberofMulitipleReflectionsPanel_3.Position = [382 26 180 56];

            % Create RefEditField_2Label_4
            app.RefEditField_2Label_4 = uilabel(app.NumberofMulitipleReflectionsPanel_3);
            app.RefEditField_2Label_4.HorizontalAlignment = 'right';
            app.RefEditField_2Label_4.Position = [4 7 28 22];
            app.RefEditField_2Label_4.Text = 'Ref.';

            % Create case2RefetlNumEditField
            app.case2RefetlNumEditField = uieditfield(app.NumberofMulitipleReflectionsPanel_3, 'numeric');
            app.case2RefetlNumEditField.ValueDisplayFormat = '%.0f';
            app.case2RefetlNumEditField.Position = [36 7 42 22];

            % Create SampleEditField_2Label_4
            app.SampleEditField_2Label_4 = uilabel(app.NumberofMulitipleReflectionsPanel_3);
            app.SampleEditField_2Label_4.HorizontalAlignment = 'right';
            app.SampleEditField_2Label_4.Position = [81 7 46 22];
            app.SampleEditField_2Label_4.Text = 'Sample';

            % Create case2SampleetlNumEditField
            app.case2SampleetlNumEditField = uieditfield(app.NumberofMulitipleReflectionsPanel_3, 'numeric');
            app.case2SampleetlNumEditField.ValueDisplayFormat = '%.0f';
            app.case2SampleetlNumEditField.Position = [131 7 42 22];

            % Create FITCASE2Button
            app.FITCASE2Button = uibutton(app.OptimisationTab, 'push');
            app.FITCASE2Button.ButtonPushedFcn = createCallbackFcn(app, @FITCASE2ButtonPushed, true);
            app.FITCASE2Button.Position = [308 458 280 30];
            app.FITCASE2Button.Text = 'FIT CASE 2';

            % Create FITCASE1Button
            app.FITCASE1Button = uibutton(app.OptimisationTab, 'push');
            app.FITCASE1Button.ButtonPushedFcn = createCallbackFcn(app, @FITCASE1ButtonPushed, true);
            app.FITCASE1Button.Position = [21 458 280 30];
            app.FITCASE1Button.Text = 'FIT CASE 1';

            % Create OPTIMIZEALLPanel
            app.OPTIMIZEALLPanel = uipanel(app.OptimisationTab);
            app.OPTIMIZEALLPanel.Title = 'OPTIMIZE ALL';
            app.OPTIMIZEALLPanel.Position = [18 278 569 114];

            % Create SampleCaseDropDownLabel
            app.SampleCaseDropDownLabel = uilabel(app.OPTIMIZEALLPanel);
            app.SampleCaseDropDownLabel.HorizontalAlignment = 'right';
            app.SampleCaseDropDownLabel.Position = [18 56 78 22];
            app.SampleCaseDropDownLabel.Text = 'Sample Case';

            % Create SampleCaseDropDown
            app.SampleCaseDropDown = uidropdown(app.OPTIMIZEALLPanel);
            app.SampleCaseDropDown.Items = {'No avaliable data'};
            app.SampleCaseDropDown.ValueChangedFcn = createCallbackFcn(app, @SampleCaseDropDownValueChanged, true);
            app.SampleCaseDropDown.Position = [101 56 157 22];
            app.SampleCaseDropDown.Value = 'No avaliable data';

            % Create PlotDropDownLabel
            app.PlotDropDownLabel = uilabel(app.OPTIMIZEALLPanel);
            app.PlotDropDownLabel.HorizontalAlignment = 'right';
            app.PlotDropDownLabel.Position = [281 55 26 22];
            app.PlotDropDownLabel.Text = 'Plot';

            % Create PlotDropDown
            app.PlotDropDown = uidropdown(app.OPTIMIZEALLPanel);
            app.PlotDropDown.Items = {'Fitness, Refractive Index, Extinction', 'eReal, eImag, Absorption'};
            app.PlotDropDown.ItemsData = {'a', 'b'};
            app.PlotDropDown.ValueChangedFcn = createCallbackFcn(app, @PlotDropDownValueChanged, true);
            app.PlotDropDown.Position = [315 55 230 22];
            app.PlotDropDown.Value = 'a';

            % Create DATAMANIPULATIONButton
            app.DATAMANIPULATIONButton = uibutton(app.OPTIMIZEALLPanel, 'push');
            app.DATAMANIPULATIONButton.ButtonPushedFcn = createCallbackFcn(app, @DATAMANIPULATIONButtonPushed, true);
            app.DATAMANIPULATIONButton.Position = [16 18 257 25];
            app.DATAMANIPULATIONButton.Text = 'DATA MANIPULATION';

            % Create CURVEFITTINGButton
            app.CURVEFITTINGButton = uibutton(app.OPTIMIZEALLPanel, 'push');
            app.CURVEFITTINGButton.ButtonPushedFcn = createCallbackFcn(app, @CURVEFITTINGButtonPushed, true);
            app.CURVEFITTINGButton.Position = [289 17 257 25];
            app.CURVEFITTINGButton.Text = 'CURVE FITTING';

            % Create ASSIGNButtonOP
            app.ASSIGNButtonOP = uibutton(app.OptimisationTab, 'push');
            app.ASSIGNButtonOP.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonOPPushed, true);
            app.ASSIGNButtonOP.FontWeight = 'bold';
            app.ASSIGNButtonOP.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonOP.Position = [17 18 224 28];
            app.ASSIGNButtonOP.Text = 'ASSIGN OP_DATA IN WORKSPACE';

            % Create RESETOP_DATAButton
            app.RESETOP_DATAButton = uibutton(app.OptimisationTab, 'push');
            app.RESETOP_DATAButton.ButtonPushedFcn = createCallbackFcn(app, @RESETOP_DATAButtonPushed, true);
            app.RESETOP_DATAButton.FontWeight = 'bold';
            app.RESETOP_DATAButton.Position = [254 18 142 28];
            app.RESETOP_DATAButton.Text = 'RESET OP_DATA';

            % Create COMPARECASE1AND2Button
            app.COMPARECASE1AND2Button = uibutton(app.OptimisationTab, 'push');
            app.COMPARECASE1AND2Button.ButtonPushedFcn = createCallbackFcn(app, @COMPARECASE1AND2ButtonPushed, true);
            app.COMPARECASE1AND2Button.Position = [21 417 280 30];
            app.COMPARECASE1AND2Button.Text = 'COMPARE CASE 1 AND 2';

            % Create OPTIMIZEALLButton
            app.OPTIMIZEALLButton = uibutton(app.OptimisationTab, 'push');
            app.OPTIMIZEALLButton.ButtonPushedFcn = createCallbackFcn(app, @OPTIMIZEALLButtonPushed, true);
            app.OPTIMIZEALLButton.Position = [308 417 280 30];
            app.OPTIMIZEALLButton.Text = 'OPTIMIZE ALL';

            % Create DataManipulationTab
            app.DataManipulationTab = uitab(app.TabGroup);
            app.DataManipulationTab.Title = 'Data Manipulation';

            % Create UIAxes9
            app.UIAxes9 = uiaxes(app.DataManipulationTab);
            title(app.UIAxes9, 'PLOT 1')
            xlabel(app.UIAxes9, 'Frequency (THz)')
            app.UIAxes9.PlotBoxAspectRatio = [1.7992700729927 1 1];
            app.UIAxes9.FontWeight = 'bold';
            app.UIAxes9.XLim = [0 4];
            app.UIAxes9.XTickLabelRotation = 0;
            app.UIAxes9.YTickLabelRotation = 0;
            app.UIAxes9.ZTickLabelRotation = 0;
            app.UIAxes9.LineWidth = 1;
            app.UIAxes9.Box = 'on';
            app.UIAxes9.Position = [635 436 680 380];

            % Create UIAxes10
            app.UIAxes10 = uiaxes(app.DataManipulationTab);
            title(app.UIAxes10, 'PLOT 2')
            app.UIAxes10.PlotBoxAspectRatio = [1.7992700729927 1 1];
            app.UIAxes10.FontWeight = 'bold';
            app.UIAxes10.XTickLabelRotation = 0;
            app.UIAxes10.YTickLabelRotation = 0;
            app.UIAxes10.ZTickLabelRotation = 0;
            app.UIAxes10.LineWidth = 1;
            app.UIAxes10.Box = 'on';
            app.UIAxes10.Position = [635 36 680 380];

            % Create STEP1Panel
            app.STEP1Panel = uipanel(app.DataManipulationTab);
            app.STEP1Panel.Title = 'STEP 1';
            app.STEP1Panel.Position = [21 432 600 349];

            % Create SourceDataSetEditFieldLabel
            app.SourceDataSetEditFieldLabel = uilabel(app.STEP1Panel);
            app.SourceDataSetEditFieldLabel.HorizontalAlignment = 'right';
            app.SourceDataSetEditFieldLabel.Position = [13 254 94 22];
            app.SourceDataSetEditFieldLabel.Text = 'Source Data Set';

            % Create SourceDataSetEditField
            app.SourceDataSetEditField = uieditfield(app.STEP1Panel, 'text');
            app.SourceDataSetEditField.Position = [124 256 274 22];

            % Create ADropDownLabel
            app.ADropDownLabel = uilabel(app.STEP1Panel);
            app.ADropDownLabel.HorizontalAlignment = 'right';
            app.ADropDownLabel.Position = [117 218 25 22];
            app.ADropDownLabel.Text = 'A';

            % Create ADropDown
            app.ADropDown = uidropdown(app.STEP1Panel);
            app.ADropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.ADropDown.Position = [149 218 113 22];
            app.ADropDown.Value = 'frequency';

            % Create VaribleDefinitionLabel
            app.VaribleDefinitionLabel = uilabel(app.STEP1Panel);
            app.VaribleDefinitionLabel.Position = [19 217 95 22];
            app.VaribleDefinitionLabel.Text = 'Varible Definition';

            % Create XaxisDataDropDownLabel
            app.XaxisDataDropDownLabel = uilabel(app.STEP1Panel);
            app.XaxisDataDropDownLabel.HorizontalAlignment = 'right';
            app.XaxisDataDropDownLabel.Position = [20 182 67 22];
            app.XaxisDataDropDownLabel.Text = 'X-axis Data';

            % Create XaxisDataDropDown
            app.XaxisDataDropDown = uidropdown(app.STEP1Panel);
            app.XaxisDataDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.XaxisDataDropDown.Position = [115 182 100 22];
            app.XaxisDataDropDown.Value = 'frequency';

            % Create YaxisDataEditFieldLabel
            app.YaxisDataEditFieldLabel = uilabel(app.STEP1Panel);
            app.YaxisDataEditFieldLabel.HorizontalAlignment = 'right';
            app.YaxisDataEditFieldLabel.Position = [19 147 66 22];
            app.YaxisDataEditFieldLabel.Text = 'Y-axis Data';

            % Create YaxisDataEditField
            app.YaxisDataEditField = uieditfield(app.STEP1Panel, 'text');
            app.YaxisDataEditField.Position = [115 147 457 22];
            app.YaxisDataEditField.Value = 'A';

            % Create PLOT1Button
            app.PLOT1Button = uibutton(app.STEP1Panel, 'push');
            app.PLOT1Button.ButtonPushedFcn = createCallbackFcn(app, @PLOT1ButtonPushed, true);
            app.PLOT1Button.Position = [459 21 110 45];
            app.PLOT1Button.Text = 'PLOT 1';

            % Create BDropDownLabel
            app.BDropDownLabel = uilabel(app.STEP1Panel);
            app.BDropDownLabel.HorizontalAlignment = 'right';
            app.BDropDownLabel.Position = [265 218 25 22];
            app.BDropDownLabel.Text = 'B';

            % Create BDropDown
            app.BDropDown = uidropdown(app.STEP1Panel);
            app.BDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.BDropDown.Position = [298 218 113 22];
            app.BDropDown.Value = 'frequency';

            % Create CDropDownLabel
            app.CDropDownLabel = uilabel(app.STEP1Panel);
            app.CDropDownLabel.HorizontalAlignment = 'right';
            app.CDropDownLabel.Position = [416 218 25 22];
            app.CDropDownLabel.Text = 'C';

            % Create CDropDown
            app.CDropDown = uidropdown(app.STEP1Panel);
            app.CDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.CDropDown.Position = [449 218 113 22];
            app.CDropDown.Value = 'frequency';

            % Create CALCULATEButton_2
            app.CALCULATEButton_2 = uibutton(app.STEP1Panel, 'push');
            app.CALCULATEButton_2.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEButton_2Pushed, true);
            app.CALCULATEButton_2.Position = [338 80 231 45];
            app.CALCULATEButton_2.Text = 'CALCULATE';

            % Create ALLDATAButton
            app.ALLDATAButton = uibutton(app.STEP1Panel, 'push');
            app.ALLDATAButton.ButtonPushedFcn = createCallbackFcn(app, @ALLDATAButtonPushed, true);
            app.ALLDATAButton.Position = [415 255 152 22];
            app.ALLDATAButton.Text = 'ALL DATA';

            % Create AvailableDataSetEditFieldLabel
            app.AvailableDataSetEditFieldLabel = uilabel(app.STEP1Panel);
            app.AvailableDataSetEditFieldLabel.HorizontalAlignment = 'right';
            app.AvailableDataSetEditFieldLabel.Position = [14 289 104 22];
            app.AvailableDataSetEditFieldLabel.Text = 'Available Data Set';

            % Create AvailableDataSetEditField
            app.AvailableDataSetEditField = uieditfield(app.STEP1Panel, 'text');
            app.AvailableDataSetEditField.Editable = 'off';
            app.AvailableDataSetEditField.Position = [124 289 449 22];

            % Create NumberofDataEditFieldLabel
            app.NumberofDataEditFieldLabel = uilabel(app.STEP1Panel);
            app.NumberofDataEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofDataEditFieldLabel.Position = [12 95 91 22];
            app.NumberofDataEditFieldLabel.Text = 'Number of Data';

            % Create NumberofDataEditField
            app.NumberofDataEditField = uieditfield(app.STEP1Panel, 'numeric');
            app.NumberofDataEditField.Editable = 'off';
            app.NumberofDataEditField.Position = [117 95 71 22];

            % Create exABABCetcLabel
            app.exABABCetcLabel = uilabel(app.STEP1Panel);
            app.exABABCetcLabel.Position = [117 124 129 22];
            app.exABABCetcLabel.Text = 'ex) A./B , (A+B).*C, etc';

            % Create DPlotFrequencyxaxisPanel
            app.DPlotFrequencyxaxisPanel = uipanel(app.STEP1Panel);
            app.DPlotFrequencyxaxisPanel.Title = '3D Plot (Frequency x-axis)';
            app.DPlotFrequencyxaxisPanel.Position = [19 12 300 70];

            % Create PLOT1_3DButton
            app.PLOT1_3DButton = uibutton(app.DPlotFrequencyxaxisPanel, 'push');
            app.PLOT1_3DButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1_3DButtonPushed, true);
            app.PLOT1_3DButton.Position = [174 19 110 22];
            app.PLOT1_3DButton.Text = '3D PLOT 1';

            % Create dataDropDownLabel
            app.dataDropDownLabel = uilabel(app.DPlotFrequencyxaxisPanel);
            app.dataDropDownLabel.HorizontalAlignment = 'right';
            app.dataDropDownLabel.Position = [11 19 29 22];
            app.dataDropDownLabel.Text = 'data';

            % Create data3DDropDown
            app.data3DDropDown = uidropdown(app.DPlotFrequencyxaxisPanel);
            app.data3DDropDown.Items = {'no available data'};
            app.data3DDropDown.Position = [55 19 101 22];
            app.data3DDropDown.Value = 'no available data';

            % Create DplotdoesnotsupportthebelowextractingfunctionLabel
            app.DplotdoesnotsupportthebelowextractingfunctionLabel = uilabel(app.DPlotFrequencyxaxisPanel);
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.FontSize = 10;
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.Position = [41 -1 249 22];
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.Text = '*3D plot doesnot support the below extracting function.';

            % Create RANGEPLOTButton
            app.RANGEPLOTButton = uibutton(app.STEP1Panel, 'push');
            app.RANGEPLOTButton.ButtonPushedFcn = createCallbackFcn(app, @RANGEPLOTButtonPushed, true);
            app.RANGEPLOTButton.Position = [336 21 110 45];
            app.RANGEPLOTButton.Text = 'RANGE PLOT';

            % Create ASSIGNButtonDM
            app.ASSIGNButtonDM = uibutton(app.DataManipulationTab, 'push');
            app.ASSIGNButtonDM.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonDMPushed, true);
            app.ASSIGNButtonDM.FontWeight = 'bold';
            app.ASSIGNButtonDM.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonDM.Position = [17 16 224 30];
            app.ASSIGNButtonDM.Text = 'ASSIGN DM_DATA IN WORKSPACE';

            % Create SaveData_DM
            app.SaveData_DM = uibutton(app.DataManipulationTab, 'push');
            app.SaveData_DM.ButtonPushedFcn = createCallbackFcn(app, @SaveData_DMButtonPushed, true);
            app.SaveData_DM.FontWeight = 'bold';
            app.SaveData_DM.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_DM.Position = [247 16 113 30];
            app.SaveData_DM.Text = 'SAVE DM_DATA';

            % Create DMTabGroup
            app.DMTabGroup = uitabgroup(app.DataManipulationTab);
            app.DMTabGroup.Position = [21 67 600 346];

            % Create FrequencyBaseTab
            app.FrequencyBaseTab = uitab(app.DMTabGroup);
            app.FrequencyBaseTab.Title = 'Frequency Base';

            % Create DISPLAYXLINESButton
            app.DISPLAYXLINESButton = uibutton(app.FrequencyBaseTab, 'push');
            app.DISPLAYXLINESButton.ButtonPushedFcn = createCallbackFcn(app, @DISPLAYXLINESButtonPushed, true);
            app.DISPLAYXLINESButton.Position = [462 270 115 22];
            app.DISPLAYXLINESButton.Text = 'DISPLAY X LINES';

            % Create REARRANGEDATAButton
            app.REARRANGEDATAButton = uibutton(app.FrequencyBaseTab, 'push');
            app.REARRANGEDATAButton.ButtonPushedFcn = createCallbackFcn(app, @REARRANGEDATAButtonPushed, true);
            app.REARRANGEDATAButton.Position = [396 209 179 45];
            app.REARRANGEDATAButton.Text = 'REARRANGE DATA';

            % Create PLOT2Button
            app.PLOT2Button = uibutton(app.FrequencyBaseTab, 'push');
            app.PLOT2Button.ButtonPushedFcn = createCallbackFcn(app, @PLOT2ButtonPushed, true);
            app.PLOT2Button.Position = [457 15 110 45];
            app.PLOT2Button.Text = 'PLOT 2';

            % Create XaxisDataEditFieldLabel
            app.XaxisDataEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.XaxisDataEditFieldLabel.HorizontalAlignment = 'right';
            app.XaxisDataEditFieldLabel.Position = [26 154 67 22];
            app.XaxisDataEditFieldLabel.Text = 'X-axis Data';

            % Create XaxisDataEditField
            app.XaxisDataEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.XaxisDataEditField.Position = [102 154 466 22];

            % Create GetDatafromFrequencyTHzEditFieldLabel
            app.GetDatafromFrequencyTHzEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.GetDatafromFrequencyTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.GetDatafromFrequencyTHzEditFieldLabel.Position = [17 270 171 22];
            app.GetDatafromFrequencyTHzEditFieldLabel.Text = 'Get Data from Frequency(THz)';

            % Create GetDatafromFrequencyTHzEditField
            app.GetDatafromFrequencyTHzEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.GetDatafromFrequencyTHzEditField.Position = [202 270 252 22];
            app.GetDatafromFrequencyTHzEditField.Value = '1';

            % Create YaxisDataEditField_2Label
            app.YaxisDataEditField_2Label = uilabel(app.FrequencyBaseTab);
            app.YaxisDataEditField_2Label.HorizontalAlignment = 'right';
            app.YaxisDataEditField_2Label.Position = [28 118 67 22];
            app.YaxisDataEditField_2Label.Text = 'Y-axis Data';

            % Create YaxisDataEditField_2
            app.YaxisDataEditField_2 = uieditfield(app.FrequencyBaseTab, 'text');
            app.YaxisDataEditField_2.Position = [104 118 466 22];

            % Create XLabelEditFieldLabel
            app.XLabelEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.XLabelEditFieldLabel.HorizontalAlignment = 'right';
            app.XLabelEditFieldLabel.Position = [50 83 43 22];
            app.XLabelEditFieldLabel.Text = 'XLabel';

            % Create XLabelEditField
            app.XLabelEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.XLabelEditField.Position = [103 83 204 22];
            app.XLabelEditField.Value = 'Temperature (K)';

            % Create YLabelEditFieldLabel
            app.YLabelEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.YLabelEditFieldLabel.HorizontalAlignment = 'right';
            app.YLabelEditFieldLabel.Position = [314 83 43 22];
            app.YLabelEditFieldLabel.Text = 'YLabel';

            % Create YLabelEditField
            app.YLabelEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.YLabelEditField.Position = [365 83 204 22];

            % Create MeasurementEditFieldLabel
            app.MeasurementEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.MeasurementEditFieldLabel.HorizontalAlignment = 'right';
            app.MeasurementEditFieldLabel.Position = [19 188 79 23];
            app.MeasurementEditFieldLabel.Text = 'Measurement';

            % Create MeasurementEditField
            app.MeasurementEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.MeasurementEditField.Position = [104 188 256 22];

            % Create ANALYSERButton
            app.ANALYSERButton = uibutton(app.FrequencyBaseTab, 'push');
            app.ANALYSERButton.ButtonPushedFcn = createCallbackFcn(app, @ANALYSERButtonPushed, true);
            app.ANALYSERButton.Position = [328 15 111 43];
            app.ANALYSERButton.Text = 'ANALYSER';

            % Create PeakBaseTab
            app.PeakBaseTab = uitab(app.DMTabGroup);
            app.PeakBaseTab.Title = 'Peak Base';

            % Create REARRANGEDATAButton_2
            app.REARRANGEDATAButton_2 = uibutton(app.PeakBaseTab, 'push');
            app.REARRANGEDATAButton_2.ButtonPushedFcn = createCallbackFcn(app, @REARRANGEDATAButton_2Pushed, true);
            app.REARRANGEDATAButton_2.Position = [386 198 179 45];
            app.REARRANGEDATAButton_2.Text = 'REARRANGE DATA';

            % Create PLOT2Button_2
            app.PLOT2Button_2 = uibutton(app.PeakBaseTab, 'push');
            app.PLOT2Button_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT2Button_2Pushed, true);
            app.PLOT2Button_2.Position = [336 13 110 45];
            app.PLOT2Button_2.Text = 'PLOT 2';

            % Create PLOTNEWButton_3
            app.PLOTNEWButton_3 = uibutton(app.PeakBaseTab, 'push');
            app.PLOTNEWButton_3.Position = [459 13 110 45];
            app.PLOTNEWButton_3.Text = 'PLOT NEW';

            % Create PeakNumSpinnerLabel
            app.PeakNumSpinnerLabel = uilabel(app.PeakBaseTab);
            app.PeakNumSpinnerLabel.HorizontalAlignment = 'right';
            app.PeakNumSpinnerLabel.Position = [444 265 65 22];
            app.PeakNumSpinnerLabel.Text = 'Peak Num.';

            % Create PeakNumSpinner
            app.PeakNumSpinner = uispinner(app.PeakBaseTab);
            app.PeakNumSpinner.Limits = [1 3];
            app.PeakNumSpinner.ValueChangedFcn = createCallbackFcn(app, @PeakNumSpinnerValueChanged, true);
            app.PeakNumSpinner.Position = [514 266 64 22];
            app.PeakNumSpinner.Value = 1;

            % Create LowerLimitTHzEditFieldLabel
            app.LowerLimitTHzEditFieldLabel = uilabel(app.PeakBaseTab);
            app.LowerLimitTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.LowerLimitTHzEditFieldLabel.Position = [267 265 100 22];
            app.LowerLimitTHzEditFieldLabel.Text = 'Lower Limit (THz)';

            % Create LowerLimitTHzEditField
            app.LowerLimitTHzEditField = uieditfield(app.PeakBaseTab, 'numeric');
            app.LowerLimitTHzEditField.Limits = [0 4];
            app.LowerLimitTHzEditField.ValueChangedFcn = createCallbackFcn(app, @LowerLimitTHzEditFieldValueChanged, true);
            app.LowerLimitTHzEditField.Position = [373 265 54 22];
            app.LowerLimitTHzEditField.Value = 1;

            % Create XaxisDataEditField_2Label
            app.XaxisDataEditField_2Label = uilabel(app.PeakBaseTab);
            app.XaxisDataEditField_2Label.HorizontalAlignment = 'right';
            app.XaxisDataEditField_2Label.Position = [25 156 67 22];
            app.XaxisDataEditField_2Label.Text = 'X-axis Data';

            % Create XaxisDataEditField_2
            app.XaxisDataEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.XaxisDataEditField_2.Position = [101 156 466 22];

            % Create YaxisDataEditField_3Label
            app.YaxisDataEditField_3Label = uilabel(app.PeakBaseTab);
            app.YaxisDataEditField_3Label.HorizontalAlignment = 'right';
            app.YaxisDataEditField_3Label.Position = [27 120 67 22];
            app.YaxisDataEditField_3Label.Text = 'Y-axis Data';

            % Create YaxisDataEditField_3
            app.YaxisDataEditField_3 = uieditfield(app.PeakBaseTab, 'text');
            app.YaxisDataEditField_3.Position = [103 120 466 22];

            % Create XLabelEditField_2Label
            app.XLabelEditField_2Label = uilabel(app.PeakBaseTab);
            app.XLabelEditField_2Label.HorizontalAlignment = 'right';
            app.XLabelEditField_2Label.Position = [49 85 43 22];
            app.XLabelEditField_2Label.Text = 'XLabel';

            % Create XLabelEditField_2
            app.XLabelEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.XLabelEditField_2.Position = [102 85 204 22];
            app.XLabelEditField_2.Value = 'Temperature (K)';

            % Create YLabelEditField_2Label
            app.YLabelEditField_2Label = uilabel(app.PeakBaseTab);
            app.YLabelEditField_2Label.HorizontalAlignment = 'right';
            app.YLabelEditField_2Label.Position = [313 85 43 22];
            app.YLabelEditField_2Label.Text = 'YLabel';

            % Create YLabelEditField_2
            app.YLabelEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.YLabelEditField_2.Position = [364 85 204 22];

            % Create MeasurementEditField_2Label
            app.MeasurementEditField_2Label = uilabel(app.PeakBaseTab);
            app.MeasurementEditField_2Label.HorizontalAlignment = 'right';
            app.MeasurementEditField_2Label.Position = [18 190 79 23];
            app.MeasurementEditField_2Label.Text = 'Measurement';

            % Create MeasurementEditField_2
            app.MeasurementEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.MeasurementEditField_2.Position = [103 190 256 22];

            % Create MinPeakProminenceEditFieldLabel
            app.MinPeakProminenceEditFieldLabel = uilabel(app.PeakBaseTab);
            app.MinPeakProminenceEditFieldLabel.HorizontalAlignment = 'right';
            app.MinPeakProminenceEditFieldLabel.Position = [45 265 126 22];
            app.MinPeakProminenceEditFieldLabel.Text = 'Min. Peak Prominence';

            % Create MinPeakProminenceEditField
            app.MinPeakProminenceEditField = uieditfield(app.PeakBaseTab, 'numeric');
            app.MinPeakProminenceEditField.Limits = [0 Inf];
            app.MinPeakProminenceEditField.ValueChangedFcn = createCallbackFcn(app, @MinPeakProminenceEditFieldValueChanged, true);
            app.MinPeakProminenceEditField.Position = [178 265 74 22];

            % Create JETCOLORMAPButton_DM
            app.JETCOLORMAPButton_DM = uibutton(app.DataManipulationTab, 'state');
            app.JETCOLORMAPButton_DM.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButton_DMValueChanged, true);
            app.JETCOLORMAPButton_DM.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton_DM.Position = [1170 11 107 22];

            % Create CurveFittingTab
            app.CurveFittingTab = uitab(app.TabGroup);
            app.CurveFittingTab.Title = 'Curve Fitting';

            % Create UIAxes13
            app.UIAxes13 = uiaxes(app.CurveFittingTab);
            app.UIAxes13.PlotBoxAspectRatio = [3.18220338983051 1 1];
            app.UIAxes13.FontWeight = 'bold';
            app.UIAxes13.XTickLabelRotation = 0;
            app.UIAxes13.YTickLabelRotation = 0;
            app.UIAxes13.ZTickLabelRotation = 0;
            app.UIAxes13.LineWidth = 1;
            app.UIAxes13.Box = 'on';
            app.UIAxes13.Position = [501 3 800 280];

            % Create UIAxes11
            app.UIAxes11 = uiaxes(app.CurveFittingTab);
            title(app.UIAxes11, 'Power Law')
            xlabel(app.UIAxes11, 'Frequency (THz)')
            app.UIAxes11.PlotBoxAspectRatio = [3.87113402061856 1 1];
            app.UIAxes11.FontWeight = 'bold';
            app.UIAxes11.XTickLabelRotation = 0;
            app.UIAxes11.YTickLabelRotation = 0;
            app.UIAxes11.ZTickLabelRotation = 0;
            app.UIAxes11.LineWidth = 1;
            app.UIAxes11.Box = 'on';
            app.UIAxes11.Position = [500 561 800 250];

            % Create UIAxes12
            app.UIAxes12 = uiaxes(app.CurveFittingTab);
            title(app.UIAxes12, 'Lorentzian Curves')
            xlabel(app.UIAxes12, 'Frequency (THz)')
            app.UIAxes12.PlotBoxAspectRatio = [3.87113402061856 1 1];
            app.UIAxes12.FontWeight = 'bold';
            app.UIAxes12.XTickLabelRotation = 0;
            app.UIAxes12.YTickLabelRotation = 0;
            app.UIAxes12.ZTickLabelRotation = 0;
            app.UIAxes12.LineWidth = 1;
            app.UIAxes12.Box = 'on';
            app.UIAxes12.Position = [500 299 800 250];

            % Create DataTypeLabel
            app.DataTypeLabel = uilabel(app.CurveFittingTab);
            app.DataTypeLabel.HorizontalAlignment = 'right';
            app.DataTypeLabel.Position = [44 769 60 22];
            app.DataTypeLabel.Text = 'Data Type';

            % Create CFydataDropDown
            app.CFydataDropDown = uidropdown(app.CurveFittingTab);
            app.CFydataDropDown.Items = {'absorption', 'extinction', 'eImag'};
            app.CFydataDropDown.Position = [130 769 133 22];
            app.CFydataDropDown.Value = 'absorption';

            % Create PLOTALLButton
            app.PLOTALLButton = uibutton(app.CurveFittingTab, 'push');
            app.PLOTALLButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTALLButtonPushed, true);
            app.PLOTALLButton.Position = [276 769 146 22];
            app.PLOTALLButton.Text = 'PLOT ALL';

            % Create ASSIGNButtonDM_2
            app.ASSIGNButtonDM_2 = uibutton(app.CurveFittingTab, 'push');
            app.ASSIGNButtonDM_2.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonDM_2Pushed, true);
            app.ASSIGNButtonDM_2.FontWeight = 'bold';
            app.ASSIGNButtonDM_2.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonDM_2.Position = [40 16 208 30];
            app.ASSIGNButtonDM_2.Text = 'ASSIGN CF_DATA IN WORKSPACE';

            % Create SaveData_CF
            app.SaveData_CF = uibutton(app.CurveFittingTab, 'push');
            app.SaveData_CF.ButtonPushedFcn = createCallbackFcn(app, @SaveData_CFButtonPushed, true);
            app.SaveData_CF.FontWeight = 'bold';
            app.SaveData_CF.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_CF.Position = [251 16 100 30];
            app.SaveData_CF.Text = 'SAVE CF_DATA';

            % Create UITable
            app.UITable = uitable(app.CurveFittingTab);
            app.UITable.ColumnName = {'Item'; 'SampleID'; 'B'; 'b'; 'A1'; 'x1'; 'g1'; 'A2'; 'x2'; 'g2'; 'A3'; 'x3'; 'g3'; 'Amorphous'; 'Crystalline'; 'Crystal %'};
            app.UITable.ColumnWidth = {40, 'auto', 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 'auto', 'auto', 'auto'};
            app.UITable.RowName = {};
            app.UITable.CellSelectionCallback = createCallbackFcn(app, @UITableCellSelection, true);
            app.UITable.Position = [40 495 418 262];

            % Create DISORDERFRACTIONpowerlaworlorentziancurvePanel
            app.DISORDERFRACTIONpowerlaworlorentziancurvePanel = uipanel(app.CurveFittingTab);
            app.DISORDERFRACTIONpowerlaworlorentziancurvePanel.Title = 'DISORDER FRACTION (power law or lorentzian curve)';
            app.DISORDERFRACTIONpowerlaworlorentziancurvePanel.Position = [41 359 418 59];

            % Create AlgorithmDropDownLabel
            app.AlgorithmDropDownLabel = uilabel(app.DISORDERFRACTIONpowerlaworlorentziancurvePanel);
            app.AlgorithmDropDownLabel.HorizontalAlignment = 'right';
            app.AlgorithmDropDownLabel.Position = [7 9 54 22];
            app.AlgorithmDropDownLabel.Text = 'Algorithm';

            % Create AlgorithmDropDown
            app.AlgorithmDropDown = uidropdown(app.DISORDERFRACTIONpowerlaworlorentziancurvePanel);
            app.AlgorithmDropDown.Items = {'Power Law Fit Fcn', 'Custom Fit Fcn', 'Universial Baseline'};
            app.AlgorithmDropDown.ItemsData = {'a', 'b', 'c'};
            app.AlgorithmDropDown.ValueChangedFcn = createCallbackFcn(app, @AlgorithmDropDownValueChanged, true);
            app.AlgorithmDropDown.Position = [65 9 142 22];
            app.AlgorithmDropDown.Value = 'a';

            % Create BASELINEFITButton
            app.BASELINEFITButton = uibutton(app.DISORDERFRACTIONpowerlaworlorentziancurvePanel, 'push');
            app.BASELINEFITButton.ButtonPushedFcn = createCallbackFcn(app, @BASELINEFITButtonPushed, true);
            app.BASELINEFITButton.Position = [308 8 98 23];
            app.BASELINEFITButton.Text = 'BASELINE FIT';

            % Create IterationEditFieldLabel
            app.IterationEditFieldLabel = uilabel(app.DISORDERFRACTIONpowerlaworlorentziancurvePanel);
            app.IterationEditFieldLabel.HorizontalAlignment = 'right';
            app.IterationEditFieldLabel.Position = [217 8 45 23];
            app.IterationEditFieldLabel.Text = 'Iteration';

            % Create IterationEditField
            app.IterationEditField = uieditfield(app.DISORDERFRACTIONpowerlaworlorentziancurvePanel, 'numeric');
            app.IterationEditField.Limits = [0 30];
            app.IterationEditField.ValueDisplayFormat = '%.0f';
            app.IterationEditField.Position = [266 9 35 22];
            app.IterationEditField.Value = 10;

            % Create ORDERFRACTIONLorentziancurvesPanel
            app.ORDERFRACTIONLorentziancurvesPanel = uipanel(app.CurveFittingTab);
            app.ORDERFRACTIONLorentziancurvesPanel.Title = 'ORDER FRACTION (Lorentzian curves)';
            app.ORDERFRACTIONLorentziancurvesPanel.Position = [41 148 418 202];

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.ORDERFRACTIONLorentziancurvesPanel);
            app.TabGroup2.Position = [6 37 404 141];

            % Create PEAK1Tab
            app.PEAK1Tab = uitab(app.TabGroup2);
            app.PEAK1Tab.Title = 'PEAK1';

            % Create PeakMinPromEditField
            app.PeakMinPromEditField = uieditfield(app.PEAK1Tab, 'numeric');
            app.PeakMinPromEditField.Limits = [0 50];
            app.PeakMinPromEditField.ValueDisplayFormat = '%5.2f';
            app.PeakMinPromEditField.ValueChangedFcn = createCallbackFcn(app, @PeakMinPromEditFieldValueChanged, true);
            app.PeakMinPromEditField.Position = [159 81 52 22];

            % Create CURVEFITButton
            app.CURVEFITButton = uibutton(app.PEAK1Tab, 'push');
            app.CURVEFITButton.ButtonPushedFcn = createCallbackFcn(app, @CURVEFITButtonPushed, true);
            app.CURVEFITButton.FontSize = 13;
            app.CURVEFITButton.Position = [14 10 374 23];
            app.CURVEFITButton.Text = 'CURVE FIT';

            % Create PeakMinprominenceSliderLabel
            app.PeakMinprominenceSliderLabel = uilabel(app.PEAK1Tab);
            app.PeakMinprominenceSliderLabel.HorizontalAlignment = 'right';
            app.PeakMinprominenceSliderLabel.Position = [10 84 125 22];
            app.PeakMinprominenceSliderLabel.Text = 'Peak Min. prominence';

            % Create PeakMinprominenceSlider
            app.PeakMinprominenceSlider = uislider(app.PEAK1Tab);
            app.PeakMinprominenceSlider.Limits = [0 50];
            app.PeakMinprominenceSlider.ValueChangedFcn = createCallbackFcn(app, @PeakMinprominenceSliderValueChanged, true);
            app.PeakMinprominenceSlider.Position = [15 73 200 3];

            % Create LowerboundaryEditFieldLabel
            app.LowerboundaryEditFieldLabel = uilabel(app.PEAK1Tab);
            app.LowerboundaryEditFieldLabel.HorizontalAlignment = 'right';
            app.LowerboundaryEditFieldLabel.Position = [239 79 92 22];
            app.LowerboundaryEditFieldLabel.Text = 'Lower boundary';

            % Create LowerboundaryEditField
            app.LowerboundaryEditField = uieditfield(app.PEAK1Tab, 'numeric');
            app.LowerboundaryEditField.Limits = [0 3];
            app.LowerboundaryEditField.Position = [340 81 49 22];
            app.LowerboundaryEditField.Value = 0.5;

            % Create UpperboundaryEditFieldLabel
            app.UpperboundaryEditFieldLabel = uilabel(app.PEAK1Tab);
            app.UpperboundaryEditFieldLabel.HorizontalAlignment = 'right';
            app.UpperboundaryEditFieldLabel.Position = [239 52 95 22];
            app.UpperboundaryEditFieldLabel.Text = 'Upper boundary ';

            % Create UpperboundaryEditField
            app.UpperboundaryEditField = uieditfield(app.PEAK1Tab, 'numeric');
            app.UpperboundaryEditField.Limits = [0 5];
            app.UpperboundaryEditField.Position = [340 52 48 22];
            app.UpperboundaryEditField.Value = 3;

            % Create PEAK2Tab
            app.PEAK2Tab = uitab(app.TabGroup2);
            app.PEAK2Tab.Title = 'PEAK2';

            % Create PeakMinprominenceSlider_2Label
            app.PeakMinprominenceSlider_2Label = uilabel(app.PEAK2Tab);
            app.PeakMinprominenceSlider_2Label.HorizontalAlignment = 'right';
            app.PeakMinprominenceSlider_2Label.Position = [10 84 125 22];
            app.PeakMinprominenceSlider_2Label.Text = 'Peak Min. prominence';

            % Create PeakMinprominenceSlider_2
            app.PeakMinprominenceSlider_2 = uislider(app.PEAK2Tab);
            app.PeakMinprominenceSlider_2.Limits = [0 50];
            app.PeakMinprominenceSlider_2.ValueChangedFcn = createCallbackFcn(app, @PeakMinprominenceSlider_2ValueChanged, true);
            app.PeakMinprominenceSlider_2.Position = [15 73 200 3];

            % Create PeakMinPromEditField_2
            app.PeakMinPromEditField_2 = uieditfield(app.PEAK2Tab, 'numeric');
            app.PeakMinPromEditField_2.Limits = [0 50];
            app.PeakMinPromEditField_2.ValueDisplayFormat = '%5.2f';
            app.PeakMinPromEditField_2.Position = [159 81 52 22];

            % Create LowerboundaryEditField_2Label
            app.LowerboundaryEditField_2Label = uilabel(app.PEAK2Tab);
            app.LowerboundaryEditField_2Label.HorizontalAlignment = 'right';
            app.LowerboundaryEditField_2Label.Position = [239 79 92 22];
            app.LowerboundaryEditField_2Label.Text = 'Lower boundary';

            % Create LowerboundaryEditField_2
            app.LowerboundaryEditField_2 = uieditfield(app.PEAK2Tab, 'numeric');
            app.LowerboundaryEditField_2.Limits = [0 3];
            app.LowerboundaryEditField_2.ValueChangedFcn = createCallbackFcn(app, @LowerboundaryEditField_2ValueChanged, true);
            app.LowerboundaryEditField_2.Position = [340 81 49 22];
            app.LowerboundaryEditField_2.Value = 0.5;

            % Create UpperboundaryEditField_2Label
            app.UpperboundaryEditField_2Label = uilabel(app.PEAK2Tab);
            app.UpperboundaryEditField_2Label.HorizontalAlignment = 'right';
            app.UpperboundaryEditField_2Label.Position = [239 52 95 22];
            app.UpperboundaryEditField_2Label.Text = 'Upper boundary ';

            % Create UpperboundaryEditField_2
            app.UpperboundaryEditField_2 = uieditfield(app.PEAK2Tab, 'numeric');
            app.UpperboundaryEditField_2.Limits = [0 5];
            app.UpperboundaryEditField_2.ValueChangedFcn = createCallbackFcn(app, @UpperboundaryEditField_2ValueChanged, true);
            app.UpperboundaryEditField_2.Position = [340 52 48 22];
            app.UpperboundaryEditField_2.Value = 3;

            % Create CURVEFITButton_2
            app.CURVEFITButton_2 = uibutton(app.PEAK2Tab, 'push');
            app.CURVEFITButton_2.ButtonPushedFcn = createCallbackFcn(app, @CURVEFITButton_2Pushed, true);
            app.CURVEFITButton_2.FontSize = 13;
            app.CURVEFITButton_2.Position = [14 10 374 23];
            app.CURVEFITButton_2.Text = 'CURVE FIT';

            % Create PEAK3Tab
            app.PEAK3Tab = uitab(app.TabGroup2);
            app.PEAK3Tab.Title = 'PEAK3';

            % Create PeakMinprominenceSlider_3Label
            app.PeakMinprominenceSlider_3Label = uilabel(app.PEAK3Tab);
            app.PeakMinprominenceSlider_3Label.HorizontalAlignment = 'right';
            app.PeakMinprominenceSlider_3Label.Position = [10 84 125 22];
            app.PeakMinprominenceSlider_3Label.Text = 'Peak Min. prominence';

            % Create PeakMinprominenceSlider_3
            app.PeakMinprominenceSlider_3 = uislider(app.PEAK3Tab);
            app.PeakMinprominenceSlider_3.Limits = [0 50];
            app.PeakMinprominenceSlider_3.ValueChangedFcn = createCallbackFcn(app, @PeakMinprominenceSlider_3ValueChanged, true);
            app.PeakMinprominenceSlider_3.Position = [15 73 200 3];

            % Create PeakMinPromEditField_3
            app.PeakMinPromEditField_3 = uieditfield(app.PEAK3Tab, 'numeric');
            app.PeakMinPromEditField_3.Limits = [0 50];
            app.PeakMinPromEditField_3.ValueDisplayFormat = '%5.2f';
            app.PeakMinPromEditField_3.Position = [159 81 52 22];

            % Create LowerboundaryEditField_3Label
            app.LowerboundaryEditField_3Label = uilabel(app.PEAK3Tab);
            app.LowerboundaryEditField_3Label.HorizontalAlignment = 'right';
            app.LowerboundaryEditField_3Label.Position = [239 79 92 22];
            app.LowerboundaryEditField_3Label.Text = 'Lower boundary';

            % Create LowerboundaryEditField_3
            app.LowerboundaryEditField_3 = uieditfield(app.PEAK3Tab, 'numeric');
            app.LowerboundaryEditField_3.Limits = [0 3];
            app.LowerboundaryEditField_3.ValueChangedFcn = createCallbackFcn(app, @LowerboundaryEditField_3ValueChanged, true);
            app.LowerboundaryEditField_3.Position = [340 81 49 22];
            app.LowerboundaryEditField_3.Value = 0.5;

            % Create UpperboundaryEditField_3Label
            app.UpperboundaryEditField_3Label = uilabel(app.PEAK3Tab);
            app.UpperboundaryEditField_3Label.HorizontalAlignment = 'right';
            app.UpperboundaryEditField_3Label.Position = [239 52 95 22];
            app.UpperboundaryEditField_3Label.Text = 'Upper boundary ';

            % Create UpperboundaryEditField_3
            app.UpperboundaryEditField_3 = uieditfield(app.PEAK3Tab, 'numeric');
            app.UpperboundaryEditField_3.Limits = [0 5];
            app.UpperboundaryEditField_3.ValueChangedFcn = createCallbackFcn(app, @UpperboundaryEditField_3ValueChanged, true);
            app.UpperboundaryEditField_3.Position = [340 52 48 22];
            app.UpperboundaryEditField_3.Value = 3;

            % Create CURVEFITButton_3
            app.CURVEFITButton_3 = uibutton(app.PEAK3Tab, 'push');
            app.CURVEFITButton_3.ButtonPushedFcn = createCallbackFcn(app, @CURVEFITButton_3Pushed, true);
            app.CURVEFITButton_3.FontSize = 13;
            app.CURVEFITButton_3.Position = [14 10 374 23];
            app.CURVEFITButton_3.Text = 'CURVE FIT';

            % Create AUTOCURVEFITButton
            app.AUTOCURVEFITButton = uibutton(app.ORDERFRACTIONLorentziancurvesPanel, 'push');
            app.AUTOCURVEFITButton.ButtonPushedFcn = createCallbackFcn(app, @AUTOCURVEFITButtonPushed, true);
            app.AUTOCURVEFITButton.Position = [284.5 6 115 23];
            app.AUTOCURVEFITButton.Text = 'AUTO CURVE FIT';

            % Create PeakNumberDropDownLabel
            app.PeakNumberDropDownLabel = uilabel(app.ORDERFRACTIONLorentziancurvesPanel);
            app.PeakNumberDropDownLabel.HorizontalAlignment = 'right';
            app.PeakNumberDropDownLabel.Position = [13 7 78 22];
            app.PeakNumberDropDownLabel.Text = 'Peak Number';

            % Create PeakNumberDropDown
            app.PeakNumberDropDown = uidropdown(app.ORDERFRACTIONLorentziancurvesPanel);
            app.PeakNumberDropDown.Items = {'1', '2', '3'};
            app.PeakNumberDropDown.Position = [97 7 48 22];
            app.PeakNumberDropDown.Value = '1';

            % Create StartatDropDownLabel
            app.StartatDropDownLabel = uilabel(app.ORDERFRACTIONLorentziancurvesPanel);
            app.StartatDropDownLabel.HorizontalAlignment = 'right';
            app.StartatDropDownLabel.Position = [152 7 44 22];
            app.StartatDropDownLabel.Text = 'Start at';

            % Create StartatDropDown
            app.StartatDropDown = uidropdown(app.ORDERFRACTIONLorentziancurvesPanel);
            app.StartatDropDown.Items = {'no data'};
            app.StartatDropDown.Position = [203 7 75 22];
            app.StartatDropDown.Value = 'no data';

            % Create PLOTPanel
            app.PLOTPanel = uipanel(app.CurveFittingTab);
            app.PLOTPanel.Title = 'PLOT';
            app.PLOTPanel.Position = [41 56 417 85];

            % Create xaxisdataDropDownLabel
            app.xaxisdataDropDownLabel = uilabel(app.PLOTPanel);
            app.xaxisdataDropDownLabel.HorizontalAlignment = 'right';
            app.xaxisdataDropDownLabel.Position = [15 37 64 22];
            app.xaxisdataDropDownLabel.Text = 'x-axis data';

            % Create xaxisdataDropDown
            app.xaxisdataDropDown = uidropdown(app.PLOTPanel);
            app.xaxisdataDropDown.Items = {'no available list'};
            app.xaxisdataDropDown.Position = [94 37 130 22];
            app.xaxisdataDropDown.Value = 'no available list';

            % Create yaxisdataDropDownLabel
            app.yaxisdataDropDownLabel = uilabel(app.PLOTPanel);
            app.yaxisdataDropDownLabel.HorizontalAlignment = 'right';
            app.yaxisdataDropDownLabel.Position = [15 7 64 22];
            app.yaxisdataDropDownLabel.Text = 'y-axis data';

            % Create yaxisdataDropDown
            app.yaxisdataDropDown = uidropdown(app.PLOTPanel);
            app.yaxisdataDropDown.Items = {'no available list'};
            app.yaxisdataDropDown.Position = [94 7 130 22];
            app.yaxisdataDropDown.Value = 'no available list';

            % Create PLOTButton
            app.PLOTButton = uibutton(app.PLOTPanel, 'push');
            app.PLOTButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTButtonPushed, true);
            app.PLOTButton.Position = [243 7 150 22];
            app.PLOTButton.Text = 'PLOT';

            % Create DATAANALYSISButton
            app.DATAANALYSISButton = uibutton(app.PLOTPanel, 'push');
            app.DATAANALYSISButton.ButtonPushedFcn = createCallbackFcn(app, @DATAANALYSISButtonPushed, true);
            app.DATAANALYSISButton.Position = [243 37 150 22];
            app.DATAANALYSISButton.Text = 'DATA ANALYSIS';

            % Create CurveFittingFcnPanel
            app.CurveFittingFcnPanel = uipanel(app.CurveFittingTab);
            app.CurveFittingFcnPanel.Title = 'Curve Fitting Fcn';
            app.CurveFittingFcnPanel.Position = [41 426 417 57];

            % Create XandYDATAASSIGNButton
            app.XandYDATAASSIGNButton = uibutton(app.CurveFittingFcnPanel, 'push');
            app.XandYDATAASSIGNButton.ButtonPushedFcn = createCallbackFcn(app, @XandYDATAASSIGNButtonPushed, true);
            app.XandYDATAASSIGNButton.Position = [14.5 6 137 23];
            app.XandYDATAASSIGNButton.Text = 'X and Y DATA ASSIGN';

            % Create LOADFITFCNButton
            app.LOADFITFCNButton = uibutton(app.CurveFittingFcnPanel, 'push');
            app.LOADFITFCNButton.ButtonPushedFcn = createCallbackFcn(app, @LOADFITFCNButtonPushed, true);
            app.LOADFITFCNButton.Position = [155.5 6 95 23];
            app.LOADFITFCNButton.Text = 'LOAD FIT FCN';

            % Create FitFcnEditFieldLabel
            app.FitFcnEditFieldLabel = uilabel(app.CurveFittingFcnPanel);
            app.FitFcnEditFieldLabel.HorizontalAlignment = 'right';
            app.FitFcnEditFieldLabel.Position = [253 7 42 22];
            app.FitFcnEditFieldLabel.Text = 'Fit Fcn';

            % Create FitFcnEditField
            app.FitFcnEditField = uieditfield(app.CurveFittingFcnPanel, 'text');
            app.FitFcnEditField.Position = [300 7 107 22];

            % Create LOADDATA_CFButton
            app.LOADDATA_CFButton = uibutton(app.CurveFittingTab, 'push');
            app.LOADDATA_CFButton.ButtonPushedFcn = createCallbackFcn(app, @LOADDATA_CFButtonPushed, true);
            app.LOADDATA_CFButton.FontWeight = 'bold';
            app.LOADDATA_CFButton.Position = [354 16 105 30];
            app.LOADDATA_CFButton.Text = 'LOAD CF_DATA';

            % Create SystemStatusLabel
            app.SystemStatusLabel = uilabel(app.TerahertzSpectrumAnalyzerUIFigure);
            app.SystemStatusLabel.Position = [972 887 84 22];
            app.SystemStatusLabel.Text = 'System Status';

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.TerahertzSpectrumAnalyzerUIFigure);
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [1055 887 303 22];
            app.DEBUGMsgLabel.Text = '';

            % Create CLEARMEMORYButton
            app.CLEARMEMORYButton = uibutton(app.TerahertzSpectrumAnalyzerUIFigure, 'push');
            app.CLEARMEMORYButton.ButtonPushedFcn = createCallbackFcn(app, @CLEARMEMORYButtonPushed, true);
            app.CLEARMEMORYButton.FontWeight = 'bold';
            app.CLEARMEMORYButton.Position = [752 887 110 23];
            app.CLEARMEMORYButton.Text = 'CLEAR MEMORY';

            % Create SAVEDATAButton
            app.SAVEDATAButton = uibutton(app.TerahertzSpectrumAnalyzerUIFigure, 'push');
            app.SAVEDATAButton.ButtonPushedFcn = createCallbackFcn(app, @SAVEDATAButtonPushed, true);
            app.SAVEDATAButton.FontWeight = 'bold';
            app.SAVEDATAButton.Position = [869 887 89 23];
            app.SAVEDATAButton.Text = 'SAVE DATA';

            % Show the figure after all components are created
            app.TerahertzSpectrumAnalyzerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = TSA_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.TerahertzSpectrumAnalyzerUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.TerahertzSpectrumAnalyzerUIFigure)
        end
    end
end